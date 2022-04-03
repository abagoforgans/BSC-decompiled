contract main {




// =====================  Runtime code  =====================


#
#  - swap(uint256 arg1, address arg2, address arg3)
#  - buy(uint256 arg1, address arg2)
#  - swapTo(uint256 arg1, address arg2, address arg3, address arg4)
#
address BASEAddress;
address WBNBAddress;
address DEPLOYERAddress;
uint256 totalPooled;
uint256 totalVolume;
uint256 totalFees;
uint256 removeLiquidityTx;
uint256 addLiquidityTx;
uint256 swapTx;
uint256 sub_10da421c;
uint256 sub_fdf0db9e;
uint256 sub_eb116111;
uint256 sub_29f381d3;
array of uint256 sub_9d5d46b5;
array of address token;
array of address sub_3c0f7a2a;
mapping of address stor16;
mapping of uint8 stor17;
mapping of uint8 stor18;

function sub_0ea38257(?) {
    return sub_9d5d46b5.length
}

function sub_10da421c(?) {
    return sub_10da421c
}

function totalFees() {
    return totalFees
}

function sub_17985461(?) {
    require calldata.size - 4 >= 32
    require arg1 < token.length
    return token[arg1]
}

function sub_29f381d3(?) {
    return sub_29f381d3
}

function sub_3c0f7a2a(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_3c0f7a2a.length
    return sub_3c0f7a2a[arg1]
}

function removeLiquidityTx() {
    return removeLiquidityTx
}

function isPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor17[arg1])
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

function sub_8dcb4c93(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor18[arg1])
}

function WBNB() {
    return WBNBAddress
}

function sub_9d5d46b5(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_9d5d46b5.length
    return sub_9d5d46b5[arg1]
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

function sub_eb116111(?) {
    return sub_eb116111
}

function BASE() {
    return BASEAddress
}

function sub_fdf0db9e(?) {
    return sub_fdf0db9e
}

function _fallback() payable {
    revert
}

function getPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1:
        return stor16[address(arg1)]
    return stor16[stor1]
}

function purgeDeployer() {
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    DEPLOYERAddress = 0
}

function sub_519fc9c9(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    sub_10da421c = arg1
    return 1
}

function sub_ab87d7be(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    sub_29f381d3 = arg1
    return 1
}

function sub_b02d247a(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    sub_fdf0db9e = arg1
    return 1
}

function sub_7ca51fbf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    if BASEAddress == address(arg1):
        revert with 0, 'not base'
    if address(arg1):
        if bool(stor18[stor16[address(arg1)]]) != 1:
            revert with 0, 'no need remove'
        stor18[stor16[address(arg1)]] = 0
    else:
        if bool(stor18[stor16[stor1]]) != 1:
            revert with 0, 'no need remove'
        stor18[stor16[stor1]] = 0
    return 1
}

function sub_2b2260a8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    if BASEAddress == address(arg1):
        revert with 0, 'not base'
    if address(arg1):
        if bool(stor17[stor16[address(arg1)]]) != 1:
            revert with 0, 'not a pool :/'
        stor18[stor16[address(arg1)]] = 1
        sub_3c0f7a2a.length++
        sub_3c0f7a2a[sub_3c0f7a2a.length] = stor16[address(arg1)]
    else:
        if bool(stor17[stor16[stor1]]) != 1:
            revert with 0, 'not a pool :/'
        stor18[stor16[stor1]] = 1
        sub_3c0f7a2a.length++
        sub_3c0f7a2a[sub_3c0f7a2a.length] = stor16[stor1]
    return 1
}

function sub_d4f09ce8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(BASEAddress)
    call BASEAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_b3858487(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
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
    staticcall address(arg1).0xbbe4f6db with:
            gas gas_remaining wei
           args 0xdd1755e883a39c0d4643733e02003044a3b2d7a7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).fees() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x13114a9d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    totalFees = 0
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

function removeLiquidityExact(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2:
        require ext_code.size(stor16[address(arg2)])
        call stor16[address(arg2)].transferTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor16[address(arg2)], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor16[address(arg2)])
        call stor16[address(arg2)].removeLiquidity() with:
             gas gas_remaining wei
    else:
        require ext_code.size(stor16[stor1])
        call stor16[stor1].transferTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor16[stor1], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor16[stor1])
        call stor16[stor1].removeLiquidity() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32]:
        if arg2:
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            require ext_code.size(WBNBAddress)
            call WBNBAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value ext_call.return_data[32] wei
                 gas gas_remaining wei
    if ext_call.return_data[0]:
        if BASEAddress:
            require ext_code.size(BASEAddress)
            call BASEAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            require ext_code.size(WBNBAddress)
            call WBNBAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
    if ext_call.return_data[0] > totalPooled:
        revert with 0, 'SafeMath: subtraction overflow', 0
    totalPooled -= ext_call.return_data[0]
    removeLiquidityTx++
    emit RemoveLiquidity(msg.sender, ext_call.return_data[0], ext_call.return_data[32], arg1);
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
                    args stor16[address(arg2)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[address(arg2)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor16[address(arg2)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[address(arg2)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(stor16[address(arg2)])
        call stor16[address(arg2)].swapTo(address rg1, address rg2) with:
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
                    args stor16[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor16[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(stor16[stor1])
        call stor16[stor1].swapTo(address rg1, address rg2) with:
             gas gas_remaining wei
            args BASEAddress, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] > totalPooled:
        revert with 0, 'SafeMath: subtraction overflow', 0
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
                    args stor16[address(arg2)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[address(arg2)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor16[address(arg2)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[address(arg2)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(stor16[address(arg2)])
        call stor16[address(arg2)].swapTo(address rg1, address rg2) with:
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
                    args stor16[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor16[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(stor16[stor1])
        call stor16[stor1].swapTo(address rg1, address rg2) with:
             gas gas_remaining wei
            args BASEAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] > totalPooled:
        revert with 0, 'SafeMath: subtraction overflow', 0
    totalPooled -= ext_call.return_data[0]
    totalVolume += ext_call.return_data[0]
    totalFees += ext_call.return_data[32]
    swapTx++
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_7d5ae5a8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).DAO() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x9f181b5e with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
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
            _43 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _45 = mem[_43]
            require mem[_43] == mem[_43 + 12 len 20]
            mem[mem[64] + 4] = mem[_43 + 12 len 20]
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xbbe4f6db with:
                    gas gas_remaining wei
                   args address(_45)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _51 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _53 = mem[_51]
            require mem[_51] == mem[_51 + 12 len 20]
            if address(_45) != 0xdd1755e883a39c0d4643733e02003044a3b2d7a7:
                mem[0] = mem[_51 + 12 len 20]
                stor17[mem[0]] = 1
                token.length++
                token[token.length] = address(_45)
                mem[0] = address(_45)
                mem[32] = 16
                stor16[address(_45)] = address(_53)
            idx = idx + 1
            continue 
    else:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x9f181b5e with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
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
            _44 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _46 = mem[_44]
            require mem[_44] == mem[_44 + 12 len 20]
            mem[mem[64] + 4] = mem[_44 + 12 len 20]
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xbbe4f6db with:
                    gas gas_remaining wei
                   args address(_46)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _52 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _54 = mem[_52]
            require mem[_52] == mem[_52 + 12 len 20]
            if address(_46) != 0xdd1755e883a39c0d4643733e02003044a3b2d7a7:
                mem[0] = mem[_52 + 12 len 20]
                stor17[mem[0]] = 1
                token.length++
                token[token.length] = address(_46)
                mem[0] = address(_46)
                mem[32] = 16
                stor16[address(_46)] = address(_54)
            idx = idx + 1
            continue 
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
        require ext_code.size(stor16[address(arg2)])
        staticcall stor16[address(arg2)].0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
    else:
        require ext_code.size(stor16[stor1])
        staticcall stor16[stor1].0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).calcPart(uint256 rg1, uint256 rg2) with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2:
        require ext_code.size(stor16[address(arg2)])
        call stor16[address(arg2)].transferTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor16[address(arg2)], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor16[address(arg2)])
        call stor16[address(arg2)].removeLiquidity() with:
             gas gas_remaining wei
    else:
        require ext_code.size(stor16[stor1])
        call stor16[stor1].transferTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor16[stor1], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor16[stor1])
        call stor16[stor1].removeLiquidity() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32]:
        if arg2:
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            require ext_code.size(WBNBAddress)
            call WBNBAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value ext_call.return_data[32] wei
                 gas gas_remaining wei
    if ext_call.return_data[0]:
        if BASEAddress:
            require ext_code.size(BASEAddress)
            call BASEAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            require ext_code.size(WBNBAddress)
            call WBNBAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
    if ext_call.return_data[0] > totalPooled:
        revert with 0, 'SafeMath: subtraction overflow', 0
    totalPooled -= ext_call.return_data[0]
    removeLiquidityTx++
    emit RemoveLiquidity(msg.sender, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[0]);
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_c7cb25a6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).DAO() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x9f181b5e with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xe4b50cb8 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _51 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _53 = mem[_51]
            require mem[_51] == mem[_51 + 12 len 20]
            mem[mem[64] + 4] = mem[_51 + 12 len 20]
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xbbe4f6db with:
                    gas gas_remaining wei
                   args address(_53)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_59] == mem[_59 + 12 len 20]
            if address(_53) == 0xdd1755e883a39c0d4643733e02003044a3b2d7a7:
                idx = idx + 1
                s = s
                continue 
            require ext_code.size(mem[_59 + 12 len 20])
            staticcall mem[_59 + 12 len 20].baseAmount() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_67] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_67] + s
            continue 
    else:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x9f181b5e with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xe4b50cb8 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _52 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _54 = mem[_52]
            require mem[_52] == mem[_52 + 12 len 20]
            mem[mem[64] + 4] = mem[_52 + 12 len 20]
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xbbe4f6db with:
                    gas gas_remaining wei
                   args address(_54)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _60 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_60] == mem[_60 + 12 len 20]
            if address(_54) == 0xdd1755e883a39c0d4643733e02003044a3b2d7a7:
                idx = idx + 1
                s = s
                continue 
            require ext_code.size(mem[_60 + 12 len 20])
            staticcall mem[_60 + 12 len 20].baseAmount() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_68] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_68] + s
            continue 
    totalPooled = s
}

function removeLiquidityExactAndSwap(uint256 arg1, bool arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if arg3:
        require ext_code.size(stor16[address(arg3)])
        staticcall stor16[address(arg3)].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 >= ext_call.return_data[0]:
            revert with 0, 'InputErr'
        require ext_code.size(stor16[address(arg3)])
        call stor16[address(arg3)].transferTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor16[address(arg3)], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor16[address(arg3)])
        call stor16[address(arg3)].removeLiquidity() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > totalPooled:
            revert with 0, 'SafeMath: subtraction overflow', 0
        totalPooled -= ext_call.return_data[0]
        removeLiquidityTx++
        if arg2:
            require ext_code.size(arg3)
            call arg3.0xa9059cbb with:
                 gas gas_remaining wei
                args stor16[address(arg3)], ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor16[address(arg3)])
            call stor16[address(arg3)].swap(address rg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            totalFees += ext_call.return_data[32]
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
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
            args stor16[address(arg3)], ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor16[address(arg3)])
        call stor16[address(arg3)].swap(address rg1) with:
             gas gas_remaining wei
            args BASEAddress
    else:
        require ext_code.size(stor16[stor1])
        staticcall stor16[stor1].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 >= ext_call.return_data[0]:
            revert with 0, 'InputErr'
        require ext_code.size(stor16[stor1])
        call stor16[stor1].transferTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor16[stor1], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor16[stor1])
        call stor16[stor1].removeLiquidity() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > totalPooled:
            revert with 0, 'SafeMath: subtraction overflow', 0
        totalPooled -= ext_call.return_data[0]
        removeLiquidityTx++
        if arg2:
            require ext_code.size(arg3)
            call arg3.0xa9059cbb with:
                 gas gas_remaining wei
                args stor16[stor1], ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor16[stor1])
            call stor16[stor1].swap(address rg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            totalFees += ext_call.return_data[32]
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
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
            args stor16[stor1], ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor16[stor1])
        call stor16[stor1].swap(address rg1) with:
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
    staticcall address(ext_call.return_data[0]).calcValueInBase(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg3), ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalFees += ext_call.return_data[0]
    if ext_call.return_data[32] + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
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
        require ext_code.size(stor16[address(arg3)])
        staticcall stor16[address(arg3)].0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
    else:
        require ext_code.size(stor16[stor1])
        staticcall stor16[stor1].0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).calcPart(uint256 rg1, uint256 rg2) with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3:
        require ext_code.size(stor16[address(arg3)])
        staticcall stor16[address(arg3)].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            revert with 0, 'InputErr'
        require ext_code.size(stor16[address(arg3)])
        call stor16[address(arg3)].transferTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor16[address(arg3)], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor16[address(arg3)])
        call stor16[address(arg3)].removeLiquidity() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > totalPooled:
            revert with 0, 'SafeMath: subtraction overflow', 0
        totalPooled -= ext_call.return_data[0]
        removeLiquidityTx++
        if arg2:
            require ext_code.size(arg3)
            call arg3.0xa9059cbb with:
                 gas gas_remaining wei
                args stor16[address(arg3)], ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor16[address(arg3)])
            call stor16[address(arg3)].swap(address rg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            totalFees += ext_call.return_data[32]
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
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
            args stor16[address(arg3)], ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor16[address(arg3)])
        call stor16[address(arg3)].swap(address rg1) with:
             gas gas_remaining wei
            args BASEAddress
    else:
        require ext_code.size(stor16[stor1])
        staticcall stor16[stor1].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            revert with 0, 'InputErr'
        require ext_code.size(stor16[stor1])
        call stor16[stor1].transferTo(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor16[stor1], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor16[stor1])
        call stor16[stor1].removeLiquidity() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > totalPooled:
            revert with 0, 'SafeMath: subtraction overflow', 0
        totalPooled -= ext_call.return_data[0]
        removeLiquidityTx++
        if arg2:
            require ext_code.size(arg3)
            call arg3.0xa9059cbb with:
                 gas gas_remaining wei
                args stor16[stor1], ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor16[stor1])
            call stor16[stor1].swap(address rg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            totalFees += ext_call.return_data[32]
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
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
            args stor16[stor1], ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor16[stor1])
        call stor16[stor1].swap(address rg1) with:
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
    staticcall address(ext_call.return_data[0]).calcValueInBase(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg3), ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalFees += ext_call.return_data[0]
    if ext_call.return_data[32] + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
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

function buyTo(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if BASEAddress == arg2:
        revert with 0, 'TokenTypeErr'
    if arg2:
        if not arg1:
            require ext_code.size(stor16[address(arg2)])
            call stor16[address(arg2)].swap(address rg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0]:
                if arg2:
                    require ext_code.size(arg2)
                    call arg2.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call arg3 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
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
                    args stor16[address(arg2)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor16[address(arg2)])
                call stor16[address(arg2)].swap(address rg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0]:
                    if arg2:
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg3), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(WBNBAddress)
                        call WBNBAddress.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call arg3 with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                totalPooled += arg1
                totalVolume += arg1
            else:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[address(arg2)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(BASEAddress)
                call BASEAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor16[address(arg2)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[address(arg2)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(stor16[address(arg2)])
                call stor16[address(arg2)].swap(address rg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0]:
                    if arg2:
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg3), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(WBNBAddress)
                        call WBNBAddress.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call arg3 with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
    else:
        if not arg1:
            require ext_code.size(stor16[stor1])
            call stor16[stor1].swap(address rg1) with:
                 gas gas_remaining wei
                args WBNBAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0]:
                if arg2:
                    require ext_code.size(arg2)
                    call arg2.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(WBNBAddress)
                    call WBNBAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call arg3 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
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
                    args stor16[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor16[stor1])
                call stor16[stor1].swap(address rg1) with:
                     gas gas_remaining wei
                    args WBNBAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0]:
                    if arg2:
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg3), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(WBNBAddress)
                        call WBNBAddress.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call arg3 with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                totalPooled += arg1
                totalVolume += arg1
            else:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(BASEAddress)
                call BASEAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor16[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(stor16[stor1])
                call stor16[stor1].swap(address rg1) with:
                     gas gas_remaining wei
                    args WBNBAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0]:
                    if arg2:
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg3), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(WBNBAddress)
                        call WBNBAddress.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call arg3 with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
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
    staticcall address(ext_call.return_data[0]).calcValueInBase(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg2), ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalFees += ext_call.return_data[0]
    swapTx++
    return ext_call.return_data[0], ext_call.return_data[32]
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
                        args stor16[address(arg3)], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor16[address(arg3)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    call arg3.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor16[address(arg3)], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor16[address(arg3)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
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
                    args stor16[address(arg3)], arg1
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
                            args stor16[address(arg3)], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16[address(arg3)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor16[address(arg3)], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16[address(arg3)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                totalPooled += arg1
            else:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[address(arg3)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(BASEAddress)
                call BASEAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor16[address(arg3)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[address(arg3)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
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
                            args stor16[address(arg3)], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16[address(arg3)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor16[address(arg3)], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16[address(arg3)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
        addLiquidityTx++
        require ext_code.size(stor16[address(arg3)])
        call stor16[address(arg3)].addLiquidityForMember(address rg1) with:
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
                        args stor16[stor1], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor16[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    call arg3.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor16[stor1], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor16[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
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
                    args stor16[stor1], arg1
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
                            args stor16[stor1], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16[stor1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor16[stor1], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16[stor1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                totalPooled += arg1
            else:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(BASEAddress)
                call BASEAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor16[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
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
                            args stor16[stor1], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16[stor1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor16[stor1], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16[stor1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
        addLiquidityTx++
        require ext_code.size(stor16[stor1])
        call stor16[stor1].addLiquidityForMember(address rg1) with:
             gas gas_remaining wei
            args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit AddLiquidity(msg.sender, arg1, arg2, ext_call.return_data[0]);
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
                        args stor16[address(arg3)], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor16[address(arg3)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    call arg3.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor16[address(arg3)], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor16[address(arg3)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
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
                    args stor16[address(arg3)], arg1
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
                            args stor16[address(arg3)], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16[address(arg3)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor16[address(arg3)], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16[address(arg3)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                totalPooled += arg1
            else:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[address(arg3)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(BASEAddress)
                call BASEAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor16[address(arg3)], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[address(arg3)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
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
                            args stor16[address(arg3)], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16[address(arg3)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor16[address(arg3)], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16[address(arg3)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
        addLiquidityTx++
        require ext_code.size(stor16[address(arg3)])
        call stor16[address(arg3)].addLiquidityForMember(address rg1) with:
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
                        args stor16[stor1], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor16[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    call arg3.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor16[stor1], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(arg3)
                    staticcall arg3.0x70a08231 with:
                            gas gas_remaining wei
                           args stor16[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
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
                    args stor16[stor1], arg1
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
                            args stor16[stor1], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16[stor1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor16[stor1], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16[stor1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                totalPooled += arg1
            else:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(BASEAddress)
                call BASEAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, stor16[stor1], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
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
                            args stor16[stor1], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16[stor1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        call arg3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor16[stor1], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16[stor1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
        addLiquidityTx++
        require ext_code.size(stor16[stor1])
        call stor16[stor1].addLiquidityForMember(address rg1) with:
             gas gas_remaining wei
            args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit AddLiquidity(address(arg4), arg1, arg2, ext_call.return_data[0]);
    return ext_call.return_data[0]
}

function createPool(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).DAO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if DEPLOYERAddress != msg.sender:
            revert with 0, 'Must be DAO'
    if arg3:
        if stor16[address(arg3)]:
            revert with 0, 'CreateErr'
    else:
        if stor16[stor1]:
            revert with 0, 'CreateErr'
    if BASEAddress == arg3:
        revert with 0, 'Must not be Base'
    if arg2 <= 0:
        revert with 0, 'Must get tokens for both'
    if arg1 <= 0:
        revert with 0, 'Must get tokens for both'
    if arg3:
        create contract with 0 wei
                        code: code.data[17328 len 9629], BASEAddress, arg3
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        stor16[address(arg3)] = address(create.new_address)
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
                        revert with 0, 'SafeMath: subtraction overflow', 0
            token.length++
            token[token.length] = arg3
            stor17[address(create.new_address)] = 1
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
                            revert with 0, 'SafeMath: subtraction overflow', 0
                token.length++
                token[token.length] = arg3
                stor17[address(create.new_address)] = 1
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
                    revert with 0, 'SafeMath: subtraction overflow', 0
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
                            revert with 0, 'SafeMath: subtraction overflow', 0
                token.length++
                token[token.length] = arg3
                stor17[address(create.new_address)] = 1
    else:
        create contract with 0 wei
                        code: code.data[17328 len 9629], BASEAddress, WBNBAddress
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        stor16[stor1] = address(create.new_address)
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
                        revert with 0, 'SafeMath: subtraction overflow', 0
            token.length++
            token[token.length] = WBNBAddress
            stor17[address(create.new_address)] = 1
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
                            revert with 0, 'SafeMath: subtraction overflow', 0
                token.length++
                token[token.length] = WBNBAddress
                stor17[address(create.new_address)] = 1
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
                    revert with 0, 'SafeMath: subtraction overflow', 0
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
                            revert with 0, 'SafeMath: subtraction overflow', 0
                token.length++
                token[token.length] = WBNBAddress
                stor17[address(create.new_address)] = 1
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



}
