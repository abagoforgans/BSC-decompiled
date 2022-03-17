contract main {




// =====================  Runtime code  =====================


#
#  - getUnclaimedAssetWithBalance(address arg1, address arg2)
#
address BASEAddress;
address DEPLOYERAddress;

function DEPLOYER() payable {
    return DEPLOYERAddress
}

function BASE() payable {
    return BASEAddress
}

function _fallback() payable {
    revert
}

function calcShare(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg3:
        if not arg2:
            revert with 0, '', 0
        return (0 / arg2)
    if arg1 * arg3 / arg3 != arg1:
        revert with 0, 'SafeMath'
    if not arg2:
        revert with 0, '', 0
    return (arg1 * arg3 / arg2)
}

function calcPart(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > 10000:
        revert with 0, 'Must be correct BP'
    if arg1 <= 0:
        revert with 0, 'Must be correct BP'
    if not arg2:
        return 0
    if arg1 * arg2 / arg2 != arg1:
        revert with 0, 'SafeMath'
    return (arg1 * arg2 / 10000)
}

function calcValueInBaseWithPool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.baseAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.tokenAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0])
}

function calcValueInTokenWithPool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.baseAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.tokenAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0])
}

function tokenCount() payable {
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x9f181b5e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function isMember(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 0
    return 1
}

function calcSwapFee(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        require arg2 + arg1 >= arg1
        if not arg2 + arg1:
            revert with 0, '', 0
        if (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1) / arg2 + arg1 != arg2 + arg1:
            revert with 0, 'SafeMath'
        if not (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1):
            revert with 0, '', 0
        return (0 / (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1))
    if arg3 * arg1 / arg1 != arg3:
        revert with 0, 'SafeMath'
    if not arg1:
        require arg2 + arg1 >= arg1
        if not arg2 + arg1:
            revert with 0, '', 0
        if (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1) / arg2 + arg1 != arg2 + arg1:
            revert with 0, 'SafeMath'
        if not (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1):
            revert with 0, '', 0
        return (0 / (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1))
    if arg3 * arg1 * arg1 / arg1 != arg3 * arg1:
        revert with 0, 'SafeMath'
    require arg2 + arg1 >= arg1
    if not arg2 + arg1:
        revert with 0, '', 0
    if (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1) / arg2 + arg1 != arg2 + arg1:
        revert with 0, 'SafeMath'
    if not (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1):
        revert with 0, '', 0
    return (arg3 * arg1 * arg1 / (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1))
}

function calcSwapOutput(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        if arg1:
            if 0 / arg1:
                revert with 0, 'SafeMath'
        require arg2 + arg1 >= arg1
        if not arg2 + arg1:
            revert with 0, '', 0
        if (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1) / arg2 + arg1 != arg2 + arg1:
            revert with 0, 'SafeMath'
        if not (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1):
            revert with 0, '', 0
        return (0 / (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1))
    if arg3 * arg2 / arg2 != arg3:
        revert with 0, 'SafeMath'
    if not arg1:
        require arg2 + arg1 >= arg1
        if not arg2 + arg1:
            revert with 0, '', 0
        if (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1) / arg2 + arg1 != arg2 + arg1:
            revert with 0, 'SafeMath'
        if not (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1):
            revert with 0, '', 0
        return (0 / (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1))
    if arg3 * arg2 * arg1 / arg1 != arg3 * arg2:
        revert with 0, 'SafeMath'
    require arg2 + arg1 >= arg1
    if not arg2 + arg1:
        revert with 0, '', 0
    if (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1) / arg2 + arg1 != arg2 + arg1:
        revert with 0, 'SafeMath'
    if not (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1):
        revert with 0, '', 0
    return (arg3 * arg2 * arg1 / (arg2 * arg2) + (arg1 * arg2) + (arg2 * arg1) + (arg1 * arg1))
}

function getPoolAge(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).genesis() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + (24 * 3600) >= ext_call.return_data[0]
    if block.timestamp < ext_call.return_data[0] + (24 * 3600):
        return 1
    if ext_call.return_data[0] > block.timestamp:
        revert with 0, '', 0
    return (block.timestamp - ext_call.return_data[0] / 24 * 3600)
}

function calcValueInBase(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).baseAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).tokenAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0])
}

function calcValueInToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).baseAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).tokenAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0])
}

function calcBasePPinToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).baseAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).tokenAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0])
}

function getShareOfBaseAmount(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).baseAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
}

function getShareOfTokenAmount(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).tokenAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
}

function calcStakeUnits(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 + arg4 >= arg4
    if not arg3:
        if not arg4:
            if arg2 + arg4:
                if 0 / arg2 + arg4:
                    revert with 0, 'SafeMath'
            if not arg4:
                revert with 0, '', 0
            if arg2 * arg4 / arg4 != arg2:
                revert with 0, 'SafeMath'
            if not 4 * arg2 * arg4:
                revert with 0, '', 0
            return (0 / 4 * arg2 * arg4)
        if arg1 * arg4 / arg4 != arg1:
            revert with 0, 'SafeMath'
        require arg1 * arg4 >= 0
        if not arg2 + arg4:
            if not arg4:
                revert with 0, '', 0
            if arg2 * arg4 / arg4 != arg2:
                revert with 0, 'SafeMath'
            if not 4 * arg2 * arg4:
                revert with 0, '', 0
            return (0 / 4 * arg2 * arg4)
        if (arg2 * arg1 * arg4) + (arg4 * arg1 * arg4) / arg2 + arg4 != arg1 * arg4:
            revert with 0, 'SafeMath'
        if not arg4:
            revert with 0, '', 0
        if arg2 * arg4 / arg4 != arg2:
            revert with 0, 'SafeMath'
        if not 4 * arg2 * arg4:
            revert with 0, '', 0
        return ((arg2 * arg1 * arg4) + (arg4 * arg1 * arg4) / 4 * arg2 * arg4)
    if arg2 * arg3 / arg3 != arg2:
        revert with 0, 'SafeMath'
    if not arg4:
        require arg2 * arg3 >= arg2 * arg3
        if not arg2 + arg4:
            if not arg4:
                revert with 0, '', 0
            if arg2 * arg4 / arg4 != arg2:
                revert with 0, 'SafeMath'
            if not 4 * arg2 * arg4:
                revert with 0, '', 0
            return (0 / 4 * arg2 * arg4)
        if (arg2 * arg2 * arg3) + (arg4 * arg2 * arg3) / arg2 + arg4 != arg2 * arg3:
            revert with 0, 'SafeMath'
        if not arg4:
            revert with 0, '', 0
        if arg2 * arg4 / arg4 != arg2:
            revert with 0, 'SafeMath'
        if not 4 * arg2 * arg4:
            revert with 0, '', 0
        return ((arg2 * arg2 * arg3) + (arg4 * arg2 * arg3) / 4 * arg2 * arg4)
    if arg1 * arg4 / arg4 != arg1:
        revert with 0, 'SafeMath'
    require (arg1 * arg4) + (arg2 * arg3) >= arg2 * arg3
    if not arg2 + arg4:
        if not arg4:
            revert with 0, '', 0
        if arg2 * arg4 / arg4 != arg2:
            revert with 0, 'SafeMath'
        if not 4 * arg2 * arg4:
            revert with 0, '', 0
        return (0 / 4 * arg2 * arg4)
    if (arg2 * arg1 * arg4) + (arg4 * arg1 * arg4) + (arg2 * arg2 * arg3) + (arg4 * arg2 * arg3) / arg2 + arg4 != (arg1 * arg4) + (arg2 * arg3):
        revert with 0, 'SafeMath'
    if not arg4:
        revert with 0, '', 0
    if arg2 * arg4 / arg4 != arg2:
        revert with 0, 'SafeMath'
    if not 4 * arg2 * arg4:
        revert with 0, '', 0
    return ((arg2 * arg1 * arg4) + (arg4 * arg1 * arg4) + (arg2 * arg2 * arg3) + (arg4 * arg2 * arg3) / 4 * arg2 * arg4)
}

function calcTokenPPinBaseWithPool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.baseAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.tokenAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg2:
            if 0 / arg2:
                revert with 0, 'SafeMath'
        require ext_call.return_data[0] + arg2 >= arg2
        if not ext_call.return_data[0] + arg2:
            revert with 0, '', 0
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2) / ext_call.return_data[0] + arg2 != ext_call.return_data[0] + arg2:
            revert with 0, 'SafeMath'
        if not (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2):
            revert with 0, '', 0
        return (0 / (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    if not arg2:
        require ext_call.return_data[0] + arg2 >= arg2
        if not ext_call.return_data[0] + arg2:
            revert with 0, '', 0
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2) / ext_call.return_data[0] + arg2 != ext_call.return_data[0] + arg2:
            revert with 0, 'SafeMath'
        if not (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2):
            revert with 0, '', 0
        return (0 / (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2))
    if ext_call.return_data[0] * ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    require ext_call.return_data[0] + arg2 >= arg2
    if not ext_call.return_data[0] + arg2:
        revert with 0, '', 0
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2) / ext_call.return_data[0] + arg2 != ext_call.return_data[0] + arg2:
        revert with 0, 'SafeMath'
    if not (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2):
        revert with 0, '', 0
    return (ext_call.return_data[0] * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2))
}

function calcBasePPinTokenWithPool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.baseAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.tokenAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg2:
            if 0 / arg2:
                revert with 0, 'SafeMath'
        require ext_call.return_data[0] + arg2 >= arg2
        if not ext_call.return_data[0] + arg2:
            revert with 0, '', 0
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2) / ext_call.return_data[0] + arg2 != ext_call.return_data[0] + arg2:
            revert with 0, 'SafeMath'
        if not (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2):
            revert with 0, '', 0
        return (0 / (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    if not arg2:
        require ext_call.return_data[0] + arg2 >= arg2
        if not ext_call.return_data[0] + arg2:
            revert with 0, '', 0
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2) / ext_call.return_data[0] + arg2 != ext_call.return_data[0] + arg2:
            revert with 0, 'SafeMath'
        if not (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2):
            revert with 0, '', 0
        return (0 / (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2))
    if ext_call.return_data[0] * ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    require ext_call.return_data[0] + arg2 >= arg2
    if not ext_call.return_data[0] + arg2:
        revert with 0, '', 0
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2) / ext_call.return_data[0] + arg2 != ext_call.return_data[0] + arg2:
        revert with 0, 'SafeMath'
    if not (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2):
        revert with 0, '', 0
    return (ext_call.return_data[0] * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2))
}

function getPoolData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).genesis() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).baseAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).tokenAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).baseAmtStaked() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).tokenAmtStaked() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).fees() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).volume() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).txCount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(arg1), 
           mem[140 len 20],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function getPoolShare(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).baseAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).tokenAmt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
        if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        return 0 / ext_call.return_data[0], arg2 * ext_call.return_data[0] / ext_call.return_data[0]
    if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).tokenAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        return arg2 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
    if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    return arg2 * ext_call.return_data[0] / ext_call.return_data[0], arg2 * ext_call.return_data[0] / ext_call.return_data[0]
}

function calcTokenPPinBase(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).baseAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).tokenAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg2:
            if 0 / arg2:
                revert with 0, 'SafeMath'
        require ext_call.return_data[0] + arg2 >= arg2
        if not ext_call.return_data[0] + arg2:
            revert with 0, '', 0
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2) / ext_call.return_data[0] + arg2 != ext_call.return_data[0] + arg2:
            revert with 0, 'SafeMath'
        if not (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2):
            revert with 0, '', 0
        return (0 / (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    if not arg2:
        require ext_call.return_data[0] + arg2 >= arg2
        if not ext_call.return_data[0] + arg2:
            revert with 0, '', 0
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2) / ext_call.return_data[0] + arg2 != ext_call.return_data[0] + arg2:
            revert with 0, 'SafeMath'
        if not (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2):
            revert with 0, '', 0
        return (0 / (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2))
    if ext_call.return_data[0] * ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    require ext_call.return_data[0] + arg2 >= arg2
    if not ext_call.return_data[0] + arg2:
        revert with 0, '', 0
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2) / ext_call.return_data[0] + arg2 != ext_call.return_data[0] + arg2:
        revert with 0, 'SafeMath'
    if not (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2):
        revert with 0, '', 0
    return (ext_call.return_data[0] * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) + (arg2 * arg2))
}

function getGlobalDetails() payable {
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalStaked() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalVolume() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalFees() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).unstakeTx() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).stakeTx() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).swapTx() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function getMemberShare(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).baseAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).tokenAmt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        return 0 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).tokenAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        return ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    return ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 
           ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
}

function getPoolROI(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).baseAmtStaked() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).baseAmt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                revert with 0, 'SafeMath'
            if 2 * ext_call.return_data[0]:
                if 10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10000:
                    revert with 0, 'SafeMath'
        revert with 0, '', 0
    if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
        revert with 0, 'SafeMath'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).baseAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not 2 * ext_call.return_data[0]:
            revert with 0, '', 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).tokenAmtStaked() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).tokenAmt() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                    revert with 0, 'SafeMath'
                if 2 * ext_call.return_data[0]:
                    if 10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10000:
                        revert with 0, 'SafeMath'
            revert with 0, '', 0
        if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
            revert with 0, 'SafeMath'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).tokenAmt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not 2 * ext_call.return_data[0]:
                revert with 0, '', 0
            return uint255(0 / 2 * ext_call.return_data[0])
        if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
            revert with 0, 'SafeMath'
        if not 2 * ext_call.return_data[0]:
            if not 2 * ext_call.return_data[0]:
                revert with 0, '', 0
            return uint255(0 / 2 * ext_call.return_data[0])
        if 10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10000:
            revert with 0, 'SafeMath'
        if not 2 * ext_call.return_data[0]:
            revert with 0, '', 0
        return ((10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2)
    if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
        revert with 0, 'SafeMath'
    if not 2 * ext_call.return_data[0]:
        if not 2 * ext_call.return_data[0]:
            revert with 0, '', 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).tokenAmtStaked() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).tokenAmt() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                    revert with 0, 'SafeMath'
                if 2 * ext_call.return_data[0]:
                    if 10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10000:
                        revert with 0, 'SafeMath'
            revert with 0, '', 0
        if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
            revert with 0, 'SafeMath'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).tokenAmt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not 2 * ext_call.return_data[0]:
                revert with 0, '', 0
            return uint255(0 / 2 * ext_call.return_data[0])
        if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
            revert with 0, 'SafeMath'
        if not 2 * ext_call.return_data[0]:
            if not 2 * ext_call.return_data[0]:
                revert with 0, '', 0
            return uint255(0 / 2 * ext_call.return_data[0])
        if 10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10000:
            revert with 0, 'SafeMath'
        if not 2 * ext_call.return_data[0]:
            revert with 0, '', 0
        return ((10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2)
    if 10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10000:
        revert with 0, 'SafeMath'
    if not 2 * ext_call.return_data[0]:
        revert with 0, '', 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).tokenAmtStaked() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).tokenAmt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                revert with 0, 'SafeMath'
            if 2 * ext_call.return_data[0]:
                if 10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10000:
                    revert with 0, 'SafeMath'
        revert with 0, '', 0
    if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
        revert with 0, 'SafeMath'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).tokenAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not 2 * ext_call.return_data[0]:
            revert with 0, '', 0
        return ((0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2)
    if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
        revert with 0, 'SafeMath'
    if not 2 * ext_call.return_data[0]:
        if not 2 * ext_call.return_data[0]:
            revert with 0, '', 0
        return ((0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2)
    if 10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10000:
        revert with 0, 'SafeMath'
    if not 2 * ext_call.return_data[0]:
        revert with 0, '', 0
    return uint255(10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0])
}

function tokensInRange(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x9f181b5e with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + arg1 >= arg1
    if arg2 + arg1 <= ext_call.return_data[0]:
        require arg2 <= test266151307()
        mem[(4 * ceil32(return_data.size)) + 96] = arg2
        mem[64] = (4 * ceil32(return_data.size)) + (32 * arg2) + 128
        if not arg2:
            idx = 0
            while idx < arg2:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x98fabd3a with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _118 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_118] == mem[_118 + 12 len 20]
                require ext_code.size(mem[_118 + 12 len 20])
                staticcall mem[_118 + 12 len 20].ROUTER() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _144 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _148 = mem[_144]
                require mem[_144] == mem[_144 + 12 len 20]
                mem[mem[64] + 4] = idx
                require ext_code.size(address(_148))
                staticcall address(_148).getToken(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _160 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_160] == mem[_160 + 12 len 20]
                require idx < mem[(4 * ceil32(return_data.size)) + 96]
                mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128] = mem[_160 + 12 len 20]
                idx = idx + 1
                continue 
            _102 = mem[64]
            mem[mem[64]] = 32
            _114 = mem[(4 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 32] = mem[(4 * ceil32(return_data.size)) + 96]
            idx = 0
            s = mem[64] + 64
            t = (4 * ceil32(return_data.size)) + 128
            while idx < _114:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _102 + (32 * _114) + -mem[64] + 64
        mem[(4 * ceil32(return_data.size)) + 128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        idx = 0
        while idx < arg2:
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.0x98fabd3a with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _119 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_119] == mem[_119 + 12 len 20]
            require ext_code.size(mem[_119 + 12 len 20])
            staticcall mem[_119 + 12 len 20].ROUTER() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _145 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _149 = mem[_145]
            require mem[_145] == mem[_145 + 12 len 20]
            mem[mem[64] + 4] = idx
            require ext_code.size(address(_149))
            staticcall address(_149).getToken(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _161 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_161] == mem[_161 + 12 len 20]
            require idx < mem[(4 * ceil32(return_data.size)) + 96]
            mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128] = mem[_161 + 12 len 20]
            idx = idx + 1
            continue 
        _105 = mem[64]
        mem[mem[64]] = 32
        _115 = mem[(4 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(4 * ceil32(return_data.size)) + 96]
        idx = 0
        s = mem[64] + 64
        t = (4 * ceil32(return_data.size)) + 128
        while idx < _115:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _105 + (32 * _115) + -mem[64] + 64
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x9f181b5e with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(8 * ceil32(return_data.size)) + 96] = 8
    mem[(8 * ceil32(return_data.size)) + 128] = 0x536166654d617468000000000000000000000000000000000000000000000000
    if arg1 > ext_call.return_data[0]:
        revert with 0, '', 0
    require ext_call.return_data[0] - arg1 <= test266151307()
    mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0] - arg1
    mem[64] = (8 * ceil32(return_data.size)) + (32 * ext_call.return_data[0] - arg1) + 192
    if not ext_call.return_data[0] - arg1:
        idx = 0
        while idx < ext_call.return_data[0] - arg1:
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.0x98fabd3a with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _120 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_120] == mem[_120 + 12 len 20]
            require ext_code.size(mem[_120 + 12 len 20])
            staticcall mem[_120 + 12 len 20].ROUTER() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _146 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _150 = mem[_146]
            require mem[_146] == mem[_146 + 12 len 20]
            mem[mem[64] + 4] = idx
            require ext_code.size(address(_150))
            staticcall address(_150).getToken(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _162 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_162] == mem[_162 + 12 len 20]
            require idx < mem[(8 * ceil32(return_data.size)) + 160]
            mem[(32 * idx) + (8 * ceil32(return_data.size)) + 192] = mem[_162 + 12 len 20]
            idx = idx + 1
            continue 
        _108 = mem[64]
        mem[mem[64]] = 32
        _116 = mem[(8 * ceil32(return_data.size)) + 160]
        mem[mem[64] + 32] = mem[(8 * ceil32(return_data.size)) + 160]
        idx = 0
        s = mem[64] + 64
        t = (8 * ceil32(return_data.size)) + 192
        while idx < _116:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _108 + (32 * _116) + -mem[64] + 64
    mem[(8 * ceil32(return_data.size)) + 192 len 32 * ext_call.return_data[0] - arg1] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg1]
    idx = 0
    while idx < ext_call.return_data[0] - arg1:
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.0x98fabd3a with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _121 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_121] == mem[_121 + 12 len 20]
        require ext_code.size(mem[_121 + 12 len 20])
        staticcall mem[_121 + 12 len 20].ROUTER() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _147 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _151 = mem[_147]
        require mem[_147] == mem[_147 + 12 len 20]
        mem[mem[64] + 4] = idx
        require ext_code.size(address(_151))
        staticcall address(_151).getToken(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_163] == mem[_163 + 12 len 20]
        require idx < mem[(8 * ceil32(return_data.size)) + 160]
        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 192] = mem[_163 + 12 len 20]
        idx = idx + 1
        continue 
    _111 = mem[64]
    mem[mem[64]] = 32
    _117 = mem[(8 * ceil32(return_data.size)) + 160]
    mem[mem[64] + 32] = mem[(8 * ceil32(return_data.size)) + 160]
    idx = 0
    s = mem[64] + 64
    t = (8 * ceil32(return_data.size)) + 192
    while idx < _117:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _111 + (32 * _117) + -mem[64] + 64
}

function allTokens() payable {
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x9f181b5e with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x9f181b5e with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 0
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        require ext_call.return_data[0] <= test266151307()
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        mem[64] = (8 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x98fabd3a with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _127 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_127] == mem[_127 + 12 len 20]
                require ext_code.size(mem[_127 + 12 len 20])
                staticcall mem[_127 + 12 len 20].ROUTER() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _156 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _160 = mem[_156]
                require mem[_156] == mem[_156 + 12 len 20]
                mem[mem[64] + 4] = idx
                require ext_code.size(address(_160))
                staticcall address(_160).getToken(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _172 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_172] == mem[_172 + 12 len 20]
                require idx < mem[(8 * ceil32(return_data.size)) + 96]
                mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_172 + 12 len 20]
                idx = idx + 1
                continue 
            _122 = mem[64]
            mem[mem[64]] = 32
            _126 = mem[(8 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 32] = mem[(8 * ceil32(return_data.size)) + 96]
            idx = 0
            s = mem[64] + 64
            t = (8 * ceil32(return_data.size)) + 128
            while idx < _126:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _122 + (32 * _126) + -mem[64] + 64
        mem[(8 * ceil32(return_data.size)) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.0x98fabd3a with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _129 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_129] == mem[_129 + 12 len 20]
            require ext_code.size(mem[_129 + 12 len 20])
            staticcall mem[_129 + 12 len 20].ROUTER() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _157 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _161 = mem[_157]
            require mem[_157] == mem[_157 + 12 len 20]
            mem[mem[64] + 4] = idx
            require ext_code.size(address(_161))
            staticcall address(_161).getToken(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _173 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_173] == mem[_173 + 12 len 20]
            require idx < mem[(8 * ceil32(return_data.size)) + 96]
            mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_173 + 12 len 20]
            idx = idx + 1
            continue 
        _123 = mem[64]
        mem[mem[64]] = 32
        _128 = mem[(8 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(8 * ceil32(return_data.size)) + 96]
        idx = 0
        s = mem[64] + 64
        t = (8 * ceil32(return_data.size)) + 128
        while idx < _128:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _123 + (32 * _128) + -mem[64] + 64
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x9f181b5e with:
            gas gas_remaining wei
    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(12 * ceil32(return_data.size)) + 96] = 8
    mem[(12 * ceil32(return_data.size)) + 128] = 0x536166654d617468000000000000000000000000000000000000000000000000
    if 0 > ext_call.return_data[0]:
        revert with 0, '', 0
    require ext_call.return_data[0] <= test266151307()
    mem[(12 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    mem[64] = (12 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.0x98fabd3a with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _131 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_131] == mem[_131 + 12 len 20]
            require ext_code.size(mem[_131 + 12 len 20])
            staticcall mem[_131 + 12 len 20].ROUTER() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _158 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _162 = mem[_158]
            require mem[_158] == mem[_158 + 12 len 20]
            mem[mem[64] + 4] = idx
            require ext_code.size(address(_162))
            staticcall address(_162).getToken(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _174 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_174] == mem[_174 + 12 len 20]
            require idx < mem[(12 * ceil32(return_data.size)) + 160]
            mem[(32 * idx) + (12 * ceil32(return_data.size)) + 192] = mem[_174 + 12 len 20]
            idx = idx + 1
            continue 
        _124 = mem[64]
        mem[mem[64]] = 32
        _130 = mem[(12 * ceil32(return_data.size)) + 160]
        mem[mem[64] + 32] = mem[(12 * ceil32(return_data.size)) + 160]
        idx = 0
        s = mem[64] + 64
        t = (12 * ceil32(return_data.size)) + 192
        while idx < _130:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _124 + (32 * _130) + -mem[64] + 64
    mem[(12 * ceil32(return_data.size)) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.0x98fabd3a with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _133 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_133] == mem[_133 + 12 len 20]
        require ext_code.size(mem[_133 + 12 len 20])
        staticcall mem[_133 + 12 len 20].ROUTER() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _159 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _163 = mem[_159]
        require mem[_159] == mem[_159 + 12 len 20]
        mem[mem[64] + 4] = idx
        require ext_code.size(address(_163))
        staticcall address(_163).getToken(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _175 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_175] == mem[_175 + 12 len 20]
        require idx < mem[(12 * ceil32(return_data.size)) + 160]
        mem[(32 * idx) + (12 * ceil32(return_data.size)) + 192] = mem[_175 + 12 len 20]
        idx = idx + 1
        continue 
    _125 = mem[64]
    mem[mem[64]] = 32
    _132 = mem[(12 * ceil32(return_data.size)) + 160]
    mem[mem[64] + 32] = mem[(12 * ceil32(return_data.size)) + 160]
    idx = 0
    s = mem[64] + 64
    t = (12 * ceil32(return_data.size)) + 192
    while idx < _132:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _125 + (32 * _132) + -mem[64] + 64
}

function getTokenDetails(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 96
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[320] = 96
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    if not arg1:
        return 32, 192, 256, 18, 100000000 * 10^18, eth.balance(msg.sender), uint64(arg1) << 96, 19, 73020590878307, 0, 3, 0, 0
    mem[480] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _9 = mem[480]
    require mem[480] <= test266151307()
    require mem[480] + 511 < return_data.size + 480
    _12 = mem[mem[480] + 480]
    require mem[mem[480] + 480] <= test266151307()
    require ceil32(mem[mem[480] + 480]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[480] + 480]) + 512 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[480] + 480]) + 512
    mem[ceil32(return_data.size) + 480] = mem[mem[480] + 480]
    require return_data.size >= _12 + _9 + 32
    mem[ceil32(return_data.size) + 512 len ceil32(_12)] = mem[_9 + 512 len ceil32(_12)]
    if ceil32(_12) <= _12:
        mem[288] = ceil32(return_data.size) + 480
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _233 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _236 = mem[_233]
        require mem[_233] <= test266151307()
        require _233 + mem[_233] + 31 < _233 + return_data.size
        _240 = mem[_233 + mem[_233]]
        require mem[_233 + mem[_233]] <= test266151307()
        require ceil32(mem[_233 + mem[_233]]) + 32 >= 0 and _233 + ceil32(return_data.size) + ceil32(mem[_233 + mem[_233]]) + 32 <= test266151307()
        mem[64] = _233 + ceil32(return_data.size) + ceil32(mem[_233 + mem[_233]]) + 32
        mem[_233 + ceil32(return_data.size)] = _240
        require return_data.size >= _240 + _236 + 32
        mem[_233 + ceil32(return_data.size) + 32 len ceil32(_240)] = mem[_233 + _236 + 32 len ceil32(_240)]
        if ceil32(_240) > _240:
            mem[_233 + ceil32(return_data.size) + _240 + 32] = 0
            mem[320] = _233 + ceil32(return_data.size)
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _468 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[352] = mem[_468]
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _484 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[384] = mem[_484]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _500 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[416] = mem[_500]
            mem[448] = arg1
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 192
            _516 = mem[ceil32(return_data.size) + 480]
            mem[mem[64] + 224] = mem[ceil32(return_data.size) + 480]
            mem[mem[64] + 256 len ceil32(_516)] = mem[ceil32(return_data.size) + 512 len ceil32(_516)]
            if ceil32(_516) <= _516:
                mem[mem[64] + 64] = ceil32(_516) + 224
                mem[ceil32(_516) + mem[64] + 256] = _240
                mem[ceil32(_516) + mem[64] + 288 len ceil32(_240)] = mem[_233 + ceil32(return_data.size) + 32 len ceil32(_240)]
                if ceil32(_240) > _240:
                    mem[ceil32(_516) + mem[64] + _240 + 288] = 0
                mem[mem[64] + 96] = mem[352]
                mem[mem[64] + 128] = mem[384]
                mem[mem[64] + 160] = mem[416]
                return 32, 192, 
                       ceil32(_516) + 224,
                       mem[mem[64] + 96 len 96],
                       arg1 << 192,
                       mem[mem[64] + 224 len ceil32(_516) + 32],
                       _240,
                       mem[mem[64] + ceil32(_516) + 288 len ceil32(_240)]
            mem[mem[64] + _516 + 256] = 0
            mem[mem[64] + 64] = ceil32(_516) + 224
            mem[ceil32(_516) + mem[64] + 256] = _240
            mem[ceil32(_516) + mem[64] + 288 len ceil32(_240)] = mem[_233 + ceil32(return_data.size) + 32 len ceil32(_240)]
            if ceil32(_240) > _240:
                mem[ceil32(_516) + mem[64] + _240 + 288] = 0
            mem[mem[64] + 96] = mem[352]
            mem[mem[64] + 128] = mem[384]
            mem[mem[64] + 160] = mem[416]
            return 32, 192, 
                   ceil32(_516) + 224,
                   mem[mem[64] + 96 len 96],
                   arg1 << 192,
                   mem[mem[64] + 224 len _516 + 32],
                   0,
                   mem[mem[64] + _516 + 288 len ceil32(_240) + ceil32(_516) - _516]
        mem[320] = _233 + ceil32(return_data.size)
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _464 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[352] = mem[_464]
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _482 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[384] = mem[_482]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _498 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[416] = mem[_498]
        mem[448] = arg1
        _506 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 192
        _512 = mem[ceil32(return_data.size) + 480]
        mem[mem[64] + 224] = mem[ceil32(return_data.size) + 480]
        mem[mem[64] + 256 len ceil32(_512)] = mem[ceil32(return_data.size) + 512 len ceil32(_512)]
        if ceil32(_512) <= _512:
            mem[mem[64] + 64] = ceil32(_512) + 224
            mem[ceil32(_512) + mem[64] + 256] = _240
            mem[ceil32(_512) + mem[64] + 288 len ceil32(_240)] = mem[_233 + ceil32(return_data.size) + 32 len ceil32(_240)]
            if ceil32(_240) > _240:
                mem[ceil32(_512) + mem[64] + _240 + 288] = 0
            mem[mem[64] + 96] = mem[352]
            mem[mem[64] + 128] = mem[384]
            mem[mem[64] + 160] = mem[416]
            return 32, 192, 
                   ceil32(_512) + 224,
                   mem[mem[64] + 96 len 96],
                   arg1 << 192,
                   mem[mem[64] + 224 len ceil32(_512) + 32],
                   _240,
                   mem[mem[64] + ceil32(_512) + 288 len ceil32(_240)]
        mem[mem[64] + _512 + 256] = 0
        mem[mem[64] + 64] = ceil32(_512) + 224
        mem[ceil32(_512) + _506 + 256] = _240
        mem[ceil32(_512) + _506 + 288 len ceil32(_240)] = mem[_233 + ceil32(return_data.size) + 32 len ceil32(_240)]
        if ceil32(_240) > _240:
            mem[ceil32(_512) + _506 + _240 + 288] = 0
        mem[_506 + 96] = mem[352]
        mem[_506 + 128] = mem[384]
        mem[_506 + 160] = mem[416]
        mem[_506 + 192] = uint64(arg1) << 96
        return memory
          from mem[64]
           len ceil32(_240) + ceil32(_512) + _506 + -mem[64] + 288
    mem[ceil32(return_data.size) + _12 + 512] = 0
    mem[288] = ceil32(return_data.size) + 480
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _235 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _238 = mem[_235]
    require mem[_235] <= test266151307()
    require _235 + mem[_235] + 31 < _235 + return_data.size
    _242 = mem[_235 + mem[_235]]
    require mem[_235 + mem[_235]] <= test266151307()
    require ceil32(mem[_235 + mem[_235]]) + 32 >= 0 and _235 + ceil32(return_data.size) + ceil32(mem[_235 + mem[_235]]) + 32 <= test266151307()
    mem[64] = _235 + ceil32(return_data.size) + ceil32(mem[_235 + mem[_235]]) + 32
    mem[_235 + ceil32(return_data.size)] = _242
    require return_data.size >= _242 + _238 + 32
    mem[_235 + ceil32(return_data.size) + 32 len ceil32(_242)] = mem[_235 + _238 + 32 len ceil32(_242)]
    if ceil32(_242) <= _242:
        mem[320] = _235 + ceil32(return_data.size)
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _465 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[352] = mem[_465]
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _483 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[384] = mem[_483]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _499 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[416] = mem[_499]
        mem[448] = arg1
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 192
        _514 = mem[ceil32(return_data.size) + 480]
        mem[mem[64] + 224] = mem[ceil32(return_data.size) + 480]
        mem[mem[64] + 256 len ceil32(_514)] = mem[ceil32(return_data.size) + 512 len ceil32(_514)]
        if ceil32(_514) <= _514:
            mem[mem[64] + 64] = ceil32(_514) + 224
            mem[ceil32(_514) + mem[64] + 256] = _242
            mem[ceil32(_514) + mem[64] + 288 len ceil32(_242)] = mem[_235 + ceil32(return_data.size) + 32 len ceil32(_242)]
            if ceil32(_242) > _242:
                mem[ceil32(_514) + mem[64] + _242 + 288] = 0
            mem[mem[64] + 96] = mem[352]
            mem[mem[64] + 128] = mem[384]
            mem[mem[64] + 160] = mem[416]
            return 32, 192, 
                   ceil32(_514) + 224,
                   mem[mem[64] + 96 len 96],
                   arg1 << 192,
                   mem[mem[64] + 224 len ceil32(_514) + 32],
                   _242,
                   mem[mem[64] + ceil32(_514) + 288 len ceil32(_242)]
        mem[mem[64] + _514 + 256] = 0
        mem[mem[64] + 64] = ceil32(_514) + 224
        mem[ceil32(_514) + mem[64] + 256] = _242
        mem[ceil32(_514) + mem[64] + 288 len ceil32(_242)] = mem[_235 + ceil32(return_data.size) + 32 len ceil32(_242)]
        if ceil32(_242) > _242:
            mem[ceil32(_514) + mem[64] + _242 + 288] = 0
        mem[mem[64] + 96] = mem[352]
        mem[mem[64] + 128] = mem[384]
        mem[mem[64] + 160] = mem[416]
        return 32, 192, 
               ceil32(_514) + 224,
               mem[mem[64] + 96 len 96],
               arg1 << 192,
               mem[mem[64] + 224 len _514 + 32],
               0,
               mem[mem[64] + _514 + 288 len ceil32(_242) + ceil32(_514) - _514]
    mem[_235 + ceil32(return_data.size) + _242 + 32] = 0
    mem[320] = _235 + ceil32(return_data.size)
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _469 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[352] = mem[_469]
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _485 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[384] = mem[_485]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _501 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[416] = mem[_501]
    mem[448] = arg1
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 192
    _517 = mem[ceil32(return_data.size) + 480]
    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 480]
    mem[mem[64] + 256 len ceil32(_517)] = mem[ceil32(return_data.size) + 512 len ceil32(_517)]
    if ceil32(_517) <= _517:
        mem[mem[64] + 64] = ceil32(_517) + 224
        mem[ceil32(_517) + mem[64] + 256] = _242
        mem[ceil32(_517) + mem[64] + 288 len ceil32(_242)] = mem[_235 + ceil32(return_data.size) + 32 len ceil32(_242)]
        if ceil32(_242) > _242:
            mem[ceil32(_517) + mem[64] + _242 + 288] = 0
        mem[mem[64] + 96] = mem[352]
        mem[mem[64] + 128] = mem[384]
        mem[mem[64] + 160] = mem[416]
        return 32, 192, 
               ceil32(_517) + 224,
               mem[mem[64] + 96 len 96],
               arg1 << 192,
               mem[mem[64] + 224 len ceil32(_517) + 32],
               _242,
               mem[mem[64] + ceil32(_517) + 288 len ceil32(_242)]
    mem[mem[64] + _517 + 256] = 0
    mem[mem[64] + 64] = ceil32(_517) + 224
    mem[ceil32(_517) + mem[64] + 256] = _242
    mem[ceil32(_517) + mem[64] + 288 len ceil32(_242)] = mem[_235 + ceil32(return_data.size) + 32 len ceil32(_242)]
    if ceil32(_242) > _242:
        mem[ceil32(_517) + mem[64] + _242 + 288] = 0
    mem[mem[64] + 96] = mem[352]
    mem[mem[64] + 128] = mem[384]
    mem[mem[64] + 160] = mem[416]
    return 32, 192, 
           ceil32(_517) + 224,
           mem[mem[64] + 96 len 96],
           arg1 << 192,
           mem[mem[64] + 224 len _517 + 32],
           0,
           mem[mem[64] + _517 + 288 len ceil32(_242) + ceil32(_517) - _517]
}

function getTokenDetailsWithMember(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    if not arg1:
        return 32, 192, 256, 18, 100000000 * 10^18, eth.balance(msg.sender), uint64(arg1) << 96, 19, 73020590878307, 0, 3, 0, 0
    mem[288] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _9 = mem[288]
    require mem[288] <= test266151307()
    require mem[288] + 319 < return_data.size + 288
    _11 = mem[mem[288] + 288]
    require mem[mem[288] + 288] <= test266151307()
    require ceil32(mem[mem[288] + 288]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[288] + 288]) + 320 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[288] + 288]) + 320
    mem[ceil32(return_data.size) + 288] = mem[mem[288] + 288]
    require return_data.size >= _11 + _9 + 32
    mem[ceil32(return_data.size) + 320 len ceil32(_11)] = mem[_9 + 320 len ceil32(_11)]
    if ceil32(_11) <= _11:
        mem[96] = ceil32(return_data.size) + 288
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _232 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _235 = mem[_232]
        require mem[_232] <= test266151307()
        require _232 + mem[_232] + 31 < _232 + return_data.size
        _239 = mem[_232 + mem[_232]]
        require mem[_232 + mem[_232]] <= test266151307()
        require ceil32(mem[_232 + mem[_232]]) + 32 >= 0 and _232 + ceil32(return_data.size) + ceil32(mem[_232 + mem[_232]]) + 32 <= test266151307()
        mem[64] = _232 + ceil32(return_data.size) + ceil32(mem[_232 + mem[_232]]) + 32
        mem[_232 + ceil32(return_data.size)] = _239
        require return_data.size >= _239 + _235 + 32
        mem[_232 + ceil32(return_data.size) + 32 len ceil32(_239)] = mem[_232 + _235 + 32 len ceil32(_239)]
        if ceil32(_239) <= _239:
            mem[128] = _232 + ceil32(return_data.size)
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _463 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[160] = mem[_463]
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _481 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[192] = mem[_481]
            mem[mem[64] + 4] = arg2
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _497 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[224] = mem[_497]
            mem[256] = arg1
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 192
            _511 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 256 len ceil32(_511)] = mem[ceil32(return_data.size) + 320 len ceil32(_511)]
            if ceil32(_511) <= _511:
                mem[mem[64] + 64] = ceil32(_511) + 224
                mem[ceil32(_511) + mem[64] + 256] = _239
                mem[ceil32(_511) + mem[64] + 288 len ceil32(_239)] = mem[_232 + ceil32(return_data.size) + 32 len ceil32(_239)]
                if ceil32(_239) > _239:
                    mem[ceil32(_511) + mem[64] + _239 + 288] = 0
                mem[mem[64] + 96] = mem[160]
                mem[mem[64] + 128] = mem[192]
                mem[mem[64] + 192] = uint64(arg1) << 96
                return 32, 192, 
                       ceil32(_511) + 224,
                       mem[mem[64] + 96],
                       mem[192],
                       mem[224],
                       arg1 << 192,
                       mem[mem[64] + 224 len ceil32(_511) + 32],
                       _239,
                       mem[mem[64] + ceil32(_511) + 288 len ceil32(_239)]
            mem[mem[64] + _511 + 256] = 0
            mem[mem[64] + 64] = ceil32(_511) + 224
            mem[ceil32(_511) + mem[64] + 256] = _239
            mem[ceil32(_511) + mem[64] + 288 len ceil32(_239)] = mem[_232 + ceil32(return_data.size) + 32 len ceil32(_239)]
            if ceil32(_239) > _239:
                mem[ceil32(_511) + mem[64] + _239 + 288] = 0
            mem[mem[64] + 96] = mem[160]
            mem[mem[64] + 128] = mem[192]
            mem[mem[64] + 192] = uint64(arg1) << 96
            return 32, 192, 
                   ceil32(_511) + 224,
                   mem[mem[64] + 96],
                   mem[192],
                   mem[224],
                   arg1 << 192,
                   mem[mem[64] + 224 len _511 + 32],
                   0,
                   mem[mem[64] + _511 + 288 len ceil32(_239) + ceil32(_511) - _511]
        mem[_232 + ceil32(return_data.size) + _239 + 32] = 0
        mem[128] = _232 + ceil32(return_data.size)
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _467 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[160] = mem[_467]
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _483 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[192] = mem[_483]
        mem[mem[64] + 4] = arg2
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _499 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[224] = mem[_499]
        mem[256] = arg1
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 192
        _515 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 256 len ceil32(_515)] = mem[ceil32(return_data.size) + 320 len ceil32(_515)]
        if ceil32(_515) <= _515:
            mem[mem[64] + 64] = ceil32(_515) + 224
            mem[ceil32(_515) + mem[64] + 256] = _239
            mem[ceil32(_515) + mem[64] + 288 len ceil32(_239)] = mem[_232 + ceil32(return_data.size) + 32 len ceil32(_239)]
            if ceil32(_239) > _239:
                mem[ceil32(_515) + mem[64] + _239 + 288] = 0
            mem[mem[64] + 96] = mem[160]
            mem[mem[64] + 128] = mem[192]
            mem[mem[64] + 192] = uint64(arg1) << 96
            return 32, 192, 
                   ceil32(_515) + 224,
                   mem[mem[64] + 96],
                   mem[192],
                   mem[224],
                   arg1 << 192,
                   mem[mem[64] + 224 len ceil32(_515) + 32],
                   _239,
                   mem[mem[64] + ceil32(_515) + 288 len ceil32(_239)]
        mem[mem[64] + _515 + 256] = 0
        mem[mem[64] + 64] = ceil32(_515) + 224
        mem[ceil32(_515) + mem[64] + 256] = _239
        mem[ceil32(_515) + mem[64] + 288 len ceil32(_239)] = mem[_232 + ceil32(return_data.size) + 32 len ceil32(_239)]
        if ceil32(_239) > _239:
            mem[ceil32(_515) + mem[64] + _239 + 288] = 0
        mem[mem[64] + 96] = mem[160]
        mem[mem[64] + 128] = mem[192]
        mem[mem[64] + 192] = uint64(arg1) << 96
        return 32, 192, 
               ceil32(_515) + 224,
               mem[mem[64] + 96],
               mem[192],
               mem[224],
               arg1 << 192,
               mem[mem[64] + 224 len _515 + 32],
               0,
               mem[mem[64] + _515 + 288 len ceil32(_239) + ceil32(_515) - _515]
    mem[ceil32(return_data.size) + _11 + 320] = 0
    mem[96] = ceil32(return_data.size) + 288
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _234 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _237 = mem[_234]
    require mem[_234] <= test266151307()
    require _234 + mem[_234] + 31 < _234 + return_data.size
    _241 = mem[_234 + mem[_234]]
    require mem[_234 + mem[_234]] <= test266151307()
    require ceil32(mem[_234 + mem[_234]]) + 32 >= 0 and _234 + ceil32(return_data.size) + ceil32(mem[_234 + mem[_234]]) + 32 <= test266151307()
    mem[64] = _234 + ceil32(return_data.size) + ceil32(mem[_234 + mem[_234]]) + 32
    mem[_234 + ceil32(return_data.size)] = _241
    require return_data.size >= _241 + _237 + 32
    mem[_234 + ceil32(return_data.size) + 32 len ceil32(_241)] = mem[_234 + _237 + 32 len ceil32(_241)]
    if ceil32(_241) > _241:
        mem[_234 + ceil32(return_data.size) + _241 + 32] = 0
        mem[128] = _234 + ceil32(return_data.size)
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _468 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[160] = mem[_468]
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _484 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[192] = mem[_484]
        mem[mem[64] + 4] = arg2
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _500 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[224] = mem[_500]
        mem[256] = arg1
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 192
        _516 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 256 len ceil32(_516)] = mem[ceil32(return_data.size) + 320 len ceil32(_516)]
        if ceil32(_516) <= _516:
            mem[mem[64] + 64] = ceil32(_516) + 224
            mem[ceil32(_516) + mem[64] + 256] = _241
            mem[ceil32(_516) + mem[64] + 288 len ceil32(_241)] = mem[_234 + ceil32(return_data.size) + 32 len ceil32(_241)]
            if ceil32(_241) > _241:
                mem[ceil32(_516) + mem[64] + _241 + 288] = 0
            mem[mem[64] + 96] = mem[160]
            mem[mem[64] + 128] = mem[192]
            mem[mem[64] + 192] = uint64(arg1) << 96
            return 32, 192, 
                   ceil32(_516) + 224,
                   mem[mem[64] + 96],
                   mem[192],
                   mem[224],
                   arg1 << 192,
                   mem[mem[64] + 224 len ceil32(_516) + 32],
                   _241,
                   mem[mem[64] + ceil32(_516) + 288 len ceil32(_241)]
        mem[mem[64] + _516 + 256] = 0
        mem[mem[64] + 64] = ceil32(_516) + 224
        mem[ceil32(_516) + mem[64] + 256] = _241
        mem[ceil32(_516) + mem[64] + 288 len ceil32(_241)] = mem[_234 + ceil32(return_data.size) + 32 len ceil32(_241)]
        if ceil32(_241) > _241:
            mem[ceil32(_516) + mem[64] + _241 + 288] = 0
        mem[mem[64] + 96] = mem[160]
        mem[mem[64] + 128] = mem[192]
        mem[mem[64] + 192] = uint64(arg1) << 96
        return 32, 192, 
               ceil32(_516) + 224,
               mem[mem[64] + 96],
               mem[192],
               mem[224],
               arg1 << 192,
               mem[mem[64] + 224 len _516 + 32],
               0,
               mem[mem[64] + _516 + 288 len ceil32(_241) + ceil32(_516) - _516]
    mem[128] = _234 + ceil32(return_data.size)
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _464 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[160] = mem[_464]
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _482 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[192] = mem[_482]
    mem[mem[64] + 4] = arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _498 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[224] = mem[_498]
    mem[256] = arg1
    _506 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 192
    _513 = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 256 len ceil32(_513)] = mem[ceil32(return_data.size) + 320 len ceil32(_513)]
    if ceil32(_513) <= _513:
        mem[mem[64] + 64] = ceil32(_513) + 224
        mem[ceil32(_513) + mem[64] + 256] = _241
        mem[ceil32(_513) + mem[64] + 288 len ceil32(_241)] = mem[_234 + ceil32(return_data.size) + 32 len ceil32(_241)]
        if ceil32(_241) > _241:
            mem[ceil32(_513) + mem[64] + _241 + 288] = 0
        mem[mem[64] + 96] = mem[160]
        mem[mem[64] + 128] = mem[192]
        mem[mem[64] + 192] = uint64(arg1) << 96
        return 32, 192, 
               ceil32(_513) + 224,
               mem[mem[64] + 96],
               mem[192],
               mem[224],
               arg1 << 192,
               mem[mem[64] + 224 len ceil32(_513) + 32],
               _241,
               mem[mem[64] + ceil32(_513) + 288 len ceil32(_241)]
    mem[mem[64] + _513 + 256] = 0
    mem[mem[64] + 64] = ceil32(_513) + 224
    mem[ceil32(_513) + _506 + 256] = _241
    mem[ceil32(_513) + _506 + 288 len ceil32(_241)] = mem[_234 + ceil32(return_data.size) + 32 len ceil32(_241)]
    if ceil32(_241) > _241:
        mem[ceil32(_513) + _506 + _241 + 288] = 0
    mem[_506 + 96] = mem[160]
    mem[_506 + 128] = mem[192]
    mem[_506 + 160] = mem[224]
    mem[_506 + 192] = uint64(arg1) << 96
    return memory
      from mem[64]
       len ceil32(_241) + ceil32(_513) + _506 + -mem[64] + 288
}

function poolsInRange(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x9f181b5e with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + arg1 >= arg1
    if arg2 + arg1 <= ext_call.return_data[0]:
        require arg2 <= test266151307()
        mem[(4 * ceil32(return_data.size)) + 96] = arg2
        mem[64] = (4 * ceil32(return_data.size)) + (32 * arg2) + 128
        if not arg2:
            idx = 0
            while idx < arg2:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x98fabd3a with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _166 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_166] == mem[_166 + 12 len 20]
                require ext_code.size(mem[_166 + 12 len 20])
                staticcall mem[_166 + 12 len 20].ROUTER() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _192 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _196 = mem[_192]
                require mem[_192] == mem[_192 + 12 len 20]
                mem[mem[64] + 4] = idx
                require ext_code.size(address(_196))
                staticcall address(_196).getToken(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _208 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _212 = mem[_208]
                require mem[_208] == mem[_208 + 12 len 20]
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x98fabd3a with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_224] == mem[_224 + 12 len 20]
                require ext_code.size(mem[_224 + 12 len 20])
                staticcall mem[_224 + 12 len 20].ROUTER() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _240 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _244 = mem[_240]
                require mem[_240] == mem[_240 + 12 len 20]
                mem[mem[64] + 4] = address(_212)
                require ext_code.size(address(_244))
                staticcall address(_244).0xbbe4f6db with:
                        gas gas_remaining wei
                       args address(_212)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_256] == mem[_256 + 12 len 20]
                require idx < mem[(4 * ceil32(return_data.size)) + 96]
                mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128] = mem[_256 + 12 len 20]
                idx = idx + 1
                continue 
            _150 = mem[64]
            mem[mem[64]] = 32
            _162 = mem[(4 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 32] = mem[(4 * ceil32(return_data.size)) + 96]
            idx = 0
            s = mem[64] + 64
            t = (4 * ceil32(return_data.size)) + 128
            while idx < _162:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _150 + (32 * _162) + -mem[64] + 64
        mem[(4 * ceil32(return_data.size)) + 128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        idx = 0
        while idx < arg2:
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.0x98fabd3a with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _167 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_167] == mem[_167 + 12 len 20]
            require ext_code.size(mem[_167 + 12 len 20])
            staticcall mem[_167 + 12 len 20].ROUTER() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _193 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _197 = mem[_193]
            require mem[_193] == mem[_193 + 12 len 20]
            mem[mem[64] + 4] = idx
            require ext_code.size(address(_197))
            staticcall address(_197).getToken(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _209 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _213 = mem[_209]
            require mem[_209] == mem[_209 + 12 len 20]
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.0x98fabd3a with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _225 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_225] == mem[_225 + 12 len 20]
            require ext_code.size(mem[_225 + 12 len 20])
            staticcall mem[_225 + 12 len 20].ROUTER() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _241 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _245 = mem[_241]
            require mem[_241] == mem[_241 + 12 len 20]
            mem[mem[64] + 4] = address(_213)
            require ext_code.size(address(_245))
            staticcall address(_245).0xbbe4f6db with:
                    gas gas_remaining wei
                   args address(_213)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_257] == mem[_257 + 12 len 20]
            require idx < mem[(4 * ceil32(return_data.size)) + 96]
            mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128] = mem[_257 + 12 len 20]
            idx = idx + 1
            continue 
        _153 = mem[64]
        mem[mem[64]] = 32
        _163 = mem[(4 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(4 * ceil32(return_data.size)) + 96]
        idx = 0
        s = mem[64] + 64
        t = (4 * ceil32(return_data.size)) + 128
        while idx < _163:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _153 + (32 * _163) + -mem[64] + 64
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x9f181b5e with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(8 * ceil32(return_data.size)) + 96] = 8
    mem[(8 * ceil32(return_data.size)) + 128] = 0x536166654d617468000000000000000000000000000000000000000000000000
    if arg1 > ext_call.return_data[0]:
        revert with 0, '', 0
    require ext_call.return_data[0] - arg1 <= test266151307()
    mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0] - arg1
    mem[64] = (8 * ceil32(return_data.size)) + (32 * ext_call.return_data[0] - arg1) + 192
    if not ext_call.return_data[0] - arg1:
        idx = 0
        while idx < ext_call.return_data[0] - arg1:
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.0x98fabd3a with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _168 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_168] == mem[_168 + 12 len 20]
            require ext_code.size(mem[_168 + 12 len 20])
            staticcall mem[_168 + 12 len 20].ROUTER() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _194 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _198 = mem[_194]
            require mem[_194] == mem[_194 + 12 len 20]
            mem[mem[64] + 4] = idx
            require ext_code.size(address(_198))
            staticcall address(_198).getToken(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _214 = mem[_210]
            require mem[_210] == mem[_210 + 12 len 20]
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.0x98fabd3a with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _226 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_226] == mem[_226 + 12 len 20]
            require ext_code.size(mem[_226 + 12 len 20])
            staticcall mem[_226 + 12 len 20].ROUTER() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _242 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _246 = mem[_242]
            require mem[_242] == mem[_242 + 12 len 20]
            mem[mem[64] + 4] = address(_214)
            require ext_code.size(address(_246))
            staticcall address(_246).0xbbe4f6db with:
                    gas gas_remaining wei
                   args address(_214)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_258] == mem[_258 + 12 len 20]
            require idx < mem[(8 * ceil32(return_data.size)) + 160]
            mem[(32 * idx) + (8 * ceil32(return_data.size)) + 192] = mem[_258 + 12 len 20]
            idx = idx + 1
            continue 
        _156 = mem[64]
        mem[mem[64]] = 32
        _164 = mem[(8 * ceil32(return_data.size)) + 160]
        mem[mem[64] + 32] = mem[(8 * ceil32(return_data.size)) + 160]
        idx = 0
        s = mem[64] + 64
        t = (8 * ceil32(return_data.size)) + 192
        while idx < _164:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _156 + (32 * _164) + -mem[64] + 64
    mem[(8 * ceil32(return_data.size)) + 192 len 32 * ext_call.return_data[0] - arg1] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg1]
    idx = 0
    while idx < ext_call.return_data[0] - arg1:
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.0x98fabd3a with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _169 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_169] == mem[_169 + 12 len 20]
        require ext_code.size(mem[_169 + 12 len 20])
        staticcall mem[_169 + 12 len 20].ROUTER() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _195 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _199 = mem[_195]
        require mem[_195] == mem[_195 + 12 len 20]
        mem[mem[64] + 4] = idx
        require ext_code.size(address(_199))
        staticcall address(_199).getToken(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _215 = mem[_211]
        require mem[_211] == mem[_211 + 12 len 20]
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.0x98fabd3a with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _227 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_227] == mem[_227 + 12 len 20]
        require ext_code.size(mem[_227 + 12 len 20])
        staticcall mem[_227 + 12 len 20].ROUTER() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _247 = mem[_243]
        require mem[_243] == mem[_243 + 12 len 20]
        mem[mem[64] + 4] = address(_215)
        require ext_code.size(address(_247))
        staticcall address(_247).0xbbe4f6db with:
                gas gas_remaining wei
               args address(_215)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _259 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_259] == mem[_259 + 12 len 20]
        require idx < mem[(8 * ceil32(return_data.size)) + 160]
        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 192] = mem[_259 + 12 len 20]
        idx = idx + 1
        continue 
    _159 = mem[64]
    mem[mem[64]] = 32
    _165 = mem[(8 * ceil32(return_data.size)) + 160]
    mem[mem[64] + 32] = mem[(8 * ceil32(return_data.size)) + 160]
    idx = 0
    s = mem[64] + 64
    t = (8 * ceil32(return_data.size)) + 192
    while idx < _165:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _159 + (32 * _165) + -mem[64] + 64
}

function allPools() payable {
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x9f181b5e with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x9f181b5e with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 0
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        require ext_call.return_data[0] <= test266151307()
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        mem[64] = (8 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x98fabd3a with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _175 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_175] == mem[_175 + 12 len 20]
                require ext_code.size(mem[_175 + 12 len 20])
                staticcall mem[_175 + 12 len 20].ROUTER() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _204 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _208 = mem[_204]
                require mem[_204] == mem[_204 + 12 len 20]
                mem[mem[64] + 4] = idx
                require ext_code.size(address(_208))
                staticcall address(_208).getToken(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _220 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _224 = mem[_220]
                require mem[_220] == mem[_220 + 12 len 20]
                require ext_code.size(BASEAddress)
                staticcall BASEAddress.0x98fabd3a with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _236 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_236] == mem[_236 + 12 len 20]
                require ext_code.size(mem[_236 + 12 len 20])
                staticcall mem[_236 + 12 len 20].ROUTER() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _252 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _256 = mem[_252]
                require mem[_252] == mem[_252 + 12 len 20]
                mem[mem[64] + 4] = address(_224)
                require ext_code.size(address(_256))
                staticcall address(_256).0xbbe4f6db with:
                        gas gas_remaining wei
                       args address(_224)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _268 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_268] == mem[_268 + 12 len 20]
                require idx < mem[(8 * ceil32(return_data.size)) + 96]
                mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_268 + 12 len 20]
                idx = idx + 1
                continue 
            _170 = mem[64]
            mem[mem[64]] = 32
            _174 = mem[(8 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 32] = mem[(8 * ceil32(return_data.size)) + 96]
            idx = 0
            s = mem[64] + 64
            t = (8 * ceil32(return_data.size)) + 128
            while idx < _174:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _170 + (32 * _174) + -mem[64] + 64
        mem[(8 * ceil32(return_data.size)) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.0x98fabd3a with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_177] == mem[_177 + 12 len 20]
            require ext_code.size(mem[_177 + 12 len 20])
            staticcall mem[_177 + 12 len 20].ROUTER() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _205 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _209 = mem[_205]
            require mem[_205] == mem[_205 + 12 len 20]
            mem[mem[64] + 4] = idx
            require ext_code.size(address(_209))
            staticcall address(_209).getToken(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _221 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _225 = mem[_221]
            require mem[_221] == mem[_221 + 12 len 20]
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.0x98fabd3a with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _237 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_237] == mem[_237 + 12 len 20]
            require ext_code.size(mem[_237 + 12 len 20])
            staticcall mem[_237 + 12 len 20].ROUTER() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _253 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _257 = mem[_253]
            require mem[_253] == mem[_253 + 12 len 20]
            mem[mem[64] + 4] = address(_225)
            require ext_code.size(address(_257))
            staticcall address(_257).0xbbe4f6db with:
                    gas gas_remaining wei
                   args address(_225)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _269 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_269] == mem[_269 + 12 len 20]
            require idx < mem[(8 * ceil32(return_data.size)) + 96]
            mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_269 + 12 len 20]
            idx = idx + 1
            continue 
        _171 = mem[64]
        mem[mem[64]] = 32
        _176 = mem[(8 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(8 * ceil32(return_data.size)) + 96]
        idx = 0
        s = mem[64] + 64
        t = (8 * ceil32(return_data.size)) + 128
        while idx < _176:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _171 + (32 * _176) + -mem[64] + 64
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x9f181b5e with:
            gas gas_remaining wei
    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(12 * ceil32(return_data.size)) + 96] = 8
    mem[(12 * ceil32(return_data.size)) + 128] = 0x536166654d617468000000000000000000000000000000000000000000000000
    if 0 > ext_call.return_data[0]:
        revert with 0, '', 0
    require ext_call.return_data[0] <= test266151307()
    mem[(12 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    mem[64] = (12 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.0x98fabd3a with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _179 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_179] == mem[_179 + 12 len 20]
            require ext_code.size(mem[_179 + 12 len 20])
            staticcall mem[_179 + 12 len 20].ROUTER() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _206 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _210 = mem[_206]
            require mem[_206] == mem[_206 + 12 len 20]
            mem[mem[64] + 4] = idx
            require ext_code.size(address(_210))
            staticcall address(_210).getToken(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _222 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _226 = mem[_222]
            require mem[_222] == mem[_222 + 12 len 20]
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.0x98fabd3a with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _238 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_238] == mem[_238 + 12 len 20]
            require ext_code.size(mem[_238 + 12 len 20])
            staticcall mem[_238 + 12 len 20].ROUTER() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _254 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _258 = mem[_254]
            require mem[_254] == mem[_254 + 12 len 20]
            mem[mem[64] + 4] = address(_226)
            require ext_code.size(address(_258))
            staticcall address(_258).0xbbe4f6db with:
                    gas gas_remaining wei
                   args address(_226)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _270 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_270] == mem[_270 + 12 len 20]
            require idx < mem[(12 * ceil32(return_data.size)) + 160]
            mem[(32 * idx) + (12 * ceil32(return_data.size)) + 192] = mem[_270 + 12 len 20]
            idx = idx + 1
            continue 
        _172 = mem[64]
        mem[mem[64]] = 32
        _178 = mem[(12 * ceil32(return_data.size)) + 160]
        mem[mem[64] + 32] = mem[(12 * ceil32(return_data.size)) + 160]
        idx = 0
        s = mem[64] + 64
        t = (12 * ceil32(return_data.size)) + 192
        while idx < _178:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _172 + (32 * _178) + -mem[64] + 64
    mem[(12 * ceil32(return_data.size)) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.0x98fabd3a with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _181 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_181] == mem[_181 + 12 len 20]
        require ext_code.size(mem[_181 + 12 len 20])
        staticcall mem[_181 + 12 len 20].ROUTER() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _207 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _211 = mem[_207]
        require mem[_207] == mem[_207 + 12 len 20]
        mem[mem[64] + 4] = idx
        require ext_code.size(address(_211))
        staticcall address(_211).getToken(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _223 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _227 = mem[_223]
        require mem[_223] == mem[_223 + 12 len 20]
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.0x98fabd3a with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _239 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_239] == mem[_239 + 12 len 20]
        require ext_code.size(mem[_239 + 12 len 20])
        staticcall mem[_239 + 12 len 20].ROUTER() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _255 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _259 = mem[_255]
        require mem[_255] == mem[_255 + 12 len 20]
        mem[mem[64] + 4] = address(_227)
        require ext_code.size(address(_259))
        staticcall address(_259).0xbbe4f6db with:
                gas gas_remaining wei
               args address(_227)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _271 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_271] == mem[_271 + 12 len 20]
        require idx < mem[(12 * ceil32(return_data.size)) + 160]
        mem[(32 * idx) + (12 * ceil32(return_data.size)) + 192] = mem[_271 + 12 len 20]
        idx = idx + 1
        continue 
    _173 = mem[64]
    mem[mem[64]] = 32
    _180 = mem[(12 * ceil32(return_data.size)) + 160]
    mem[mem[64] + 32] = mem[(12 * ceil32(return_data.size)) + 160]
    idx = 0
    s = mem[64] + 64
    t = (12 * ceil32(return_data.size)) + 192
    while idx < _180:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _173 + (32 * _180) + -mem[64] + 64
}

function calcAsymmetricShare(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        if not arg2:
            if not arg2:
                if arg1:
                    if arg1 * arg1 / arg1 != arg1:
                        revert with 0, 'SafeMath'
                    require arg1 * arg1 >= 0
            else:
                if arg1 * arg2 / arg2 != arg1:
                    revert with 0, 'SafeMath'
                if not arg1 * arg2:
                    if arg1:
                        if arg1 * arg1 / arg1 != arg1:
                            revert with 0, 'SafeMath'
                        require arg1 * arg1 >= 0
                else:
                    if 2 * arg1 * arg2 / arg1 * arg2 != 2:
                        revert with 0, 'SafeMath'
                    if not arg1:
                        if 2 * arg1 * arg2 > 0:
                            revert with 0, '', 0
                        require -2 * arg1 * arg2 >= -2 * arg1 * arg2
                    else:
                        if arg1 * arg1 / arg1 != arg1:
                            revert with 0, 'SafeMath'
                        if 2 * arg1 * arg2 > 0:
                            revert with 0, '', 0
                        require (arg1 * arg1) - (2 * arg1 * arg2) >= -2 * arg1 * arg2
        else:
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2:
                if not arg2:
                    if arg1:
                        if arg1 * arg1 / arg1 != arg1:
                            revert with 0, 'SafeMath'
                        require arg1 * arg1 >= 0
                else:
                    if arg1 * arg2 / arg2 != arg1:
                        revert with 0, 'SafeMath'
                    if not arg1 * arg2:
                        if arg1:
                            if arg1 * arg1 / arg1 != arg1:
                                revert with 0, 'SafeMath'
                            require arg1 * arg1 >= 0
                    else:
                        if 2 * arg1 * arg2 / arg1 * arg2 != 2:
                            revert with 0, 'SafeMath'
                        if not arg1:
                            if 2 * arg1 * arg2 > 0:
                                revert with 0, '', 0
                            require -2 * arg1 * arg2 >= -2 * arg1 * arg2
                        else:
                            if arg1 * arg1 / arg1 != arg1:
                                revert with 0, 'SafeMath'
                            if 2 * arg1 * arg2 > 0:
                                revert with 0, '', 0
                            require (arg1 * arg1) - (2 * arg1 * arg2) >= -2 * arg1 * arg2
            else:
                if 2 * arg2 * arg2 / arg2 * arg2 != 2:
                    revert with 0, 'SafeMath'
                if not arg2:
                    if not arg1:
                        if 0 > 2 * arg2 * arg2:
                            revert with 0, '', 0
                        require 2 * arg2 * arg2 >= 2 * arg2 * arg2
                    else:
                        if arg1 * arg1 / arg1 != arg1:
                            revert with 0, 'SafeMath'
                        if 0 > 2 * arg2 * arg2:
                            revert with 0, '', 0
                        require (arg1 * arg1) + (2 * arg2 * arg2) >= 2 * arg2 * arg2
                else:
                    if arg1 * arg2 / arg2 != arg1:
                        revert with 0, 'SafeMath'
                    if not arg1 * arg2:
                        if not arg1:
                            if 0 > 2 * arg2 * arg2:
                                revert with 0, '', 0
                            require 2 * arg2 * arg2 >= 2 * arg2 * arg2
                        else:
                            if arg1 * arg1 / arg1 != arg1:
                                revert with 0, 'SafeMath'
                            if 0 > 2 * arg2 * arg2:
                                revert with 0, '', 0
                            require (arg1 * arg1) + (2 * arg2 * arg2) >= 2 * arg2 * arg2
                    else:
                        if 2 * arg1 * arg2 / arg1 * arg2 != 2:
                            revert with 0, 'SafeMath'
                        if not arg1:
                            if 2 * arg1 * arg2 > 2 * arg2 * arg2:
                                revert with 0, '', 0
                        else:
                            if arg1 * arg1 / arg1 != arg1:
                                revert with 0, 'SafeMath'
                            if 2 * arg1 * arg2 > 2 * arg2 * arg2:
                                revert with 0, '', 0
                            require arg1 * arg1 >= 0
        if not arg2:
            revert with 0, '', 0
        if arg2 * arg2 / arg2 != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * arg2:
            revert with 0, '', 0
        if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * arg2 * arg2:
            revert with 0, '', 0
        return (0 / arg2 * arg2 * arg2)
    if arg3 * arg1 / arg1 != arg3:
        revert with 0, 'SafeMath'
    if not arg2:
        if not arg2:
            if not arg1:
                if arg3 * arg1:
                    if 0 / arg3 * arg1:
                        revert with 0, 'SafeMath'
                if not arg2:
                    revert with 0, '', 0
                if arg2 * arg2 / arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2:
                    revert with 0, '', 0
                if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2 * arg2:
                    revert with 0, '', 0
                return (0 / arg2 * arg2 * arg2)
            if arg1 * arg1 / arg1 != arg1:
                revert with 0, 'SafeMath'
            require arg1 * arg1 >= 0
            if not arg3 * arg1:
                if not arg2:
                    revert with 0, '', 0
                if arg2 * arg2 / arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2:
                    revert with 0, '', 0
                if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2 * arg2:
                    revert with 0, '', 0
                return (0 / arg2 * arg2 * arg2)
            if arg1 * arg1 * arg3 * arg1 / arg3 * arg1 != arg1 * arg1:
                revert with 0, 'SafeMath'
            if not arg2:
                revert with 0, '', 0
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2:
                revert with 0, '', 0
            if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2 * arg2:
                revert with 0, '', 0
            return (arg1 * arg1 * arg3 * arg1 / arg2 * arg2 * arg2)
        if arg1 * arg2 / arg2 != arg1:
            revert with 0, 'SafeMath'
        if not arg1 * arg2:
            if not arg1:
                if arg3 * arg1:
                    if 0 / arg3 * arg1:
                        revert with 0, 'SafeMath'
                if not arg2:
                    revert with 0, '', 0
                if arg2 * arg2 / arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2:
                    revert with 0, '', 0
                if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2 * arg2:
                    revert with 0, '', 0
                return (0 / arg2 * arg2 * arg2)
            if arg1 * arg1 / arg1 != arg1:
                revert with 0, 'SafeMath'
            require arg1 * arg1 >= 0
            if not arg3 * arg1:
                if not arg2:
                    revert with 0, '', 0
                if arg2 * arg2 / arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2:
                    revert with 0, '', 0
                if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2 * arg2:
                    revert with 0, '', 0
                return (0 / arg2 * arg2 * arg2)
            if arg1 * arg1 * arg3 * arg1 / arg3 * arg1 != arg1 * arg1:
                revert with 0, 'SafeMath'
            if not arg2:
                revert with 0, '', 0
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2:
                revert with 0, '', 0
            if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2 * arg2:
                revert with 0, '', 0
            return (arg1 * arg1 * arg3 * arg1 / arg2 * arg2 * arg2)
        if 2 * arg1 * arg2 / arg1 * arg2 != 2:
            revert with 0, 'SafeMath'
        if not arg1:
            if 2 * arg1 * arg2 > 0:
                revert with 0, '', 0
            require -2 * arg1 * arg2 >= -2 * arg1 * arg2
            if not arg3 * arg1:
                if not arg2:
                    revert with 0, '', 0
                if arg2 * arg2 / arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2:
                    revert with 0, '', 0
                if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2 * arg2:
                    revert with 0, '', 0
                return (0 / arg2 * arg2 * arg2)
            if -1 * 2 * arg1 * arg2 * arg3 * arg1 / arg3 * arg1 != -2 * arg1 * arg2:
                revert with 0, 'SafeMath'
            if not arg2:
                revert with 0, '', 0
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2:
                revert with 0, '', 0
            if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2 * arg2:
                revert with 0, '', 0
            return (-1 * 2 * arg1 * arg2 * arg3 * arg1 / arg2 * arg2 * arg2)
        if arg1 * arg1 / arg1 != arg1:
            revert with 0, 'SafeMath'
        if 2 * arg1 * arg2 > 0:
            revert with 0, '', 0
        require (arg1 * arg1) - (2 * arg1 * arg2) >= -2 * arg1 * arg2
        if not arg3 * arg1:
            if not arg2:
                revert with 0, '', 0
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2:
                revert with 0, '', 0
            if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2 * arg2:
                revert with 0, '', 0
            return (0 / arg2 * arg2 * arg2)
        if (arg1 * arg1 * arg3 * arg1) - (2 * arg1 * arg2 * arg3 * arg1) / arg3 * arg1 != (arg1 * arg1) - (2 * arg1 * arg2):
            revert with 0, 'SafeMath'
        if not arg2:
            revert with 0, '', 0
        if arg2 * arg2 / arg2 != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * arg2:
            revert with 0, '', 0
        if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * arg2 * arg2:
            revert with 0, '', 0
        return ((arg1 * arg1 * arg3 * arg1) - (2 * arg1 * arg2 * arg3 * arg1) / arg2 * arg2 * arg2)
    if arg2 * arg2 / arg2 != arg2:
        revert with 0, 'SafeMath'
    if not arg2 * arg2:
        if not arg2:
            if not arg1:
                if arg3 * arg1:
                    if 0 / arg3 * arg1:
                        revert with 0, 'SafeMath'
                if not arg2:
                    revert with 0, '', 0
                if arg2 * arg2 / arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2:
                    revert with 0, '', 0
                if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2 * arg2:
                    revert with 0, '', 0
                return (0 / arg2 * arg2 * arg2)
            if arg1 * arg1 / arg1 != arg1:
                revert with 0, 'SafeMath'
            require arg1 * arg1 >= 0
            if not arg3 * arg1:
                if not arg2:
                    revert with 0, '', 0
                if arg2 * arg2 / arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2:
                    revert with 0, '', 0
                if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2 * arg2:
                    revert with 0, '', 0
                return (0 / arg2 * arg2 * arg2)
            if arg1 * arg1 * arg3 * arg1 / arg3 * arg1 != arg1 * arg1:
                revert with 0, 'SafeMath'
            if not arg2:
                revert with 0, '', 0
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2:
                revert with 0, '', 0
            if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2 * arg2:
                revert with 0, '', 0
            return (arg1 * arg1 * arg3 * arg1 / arg2 * arg2 * arg2)
        if arg1 * arg2 / arg2 != arg1:
            revert with 0, 'SafeMath'
        if not arg1 * arg2:
            if not arg1:
                if arg3 * arg1:
                    if 0 / arg3 * arg1:
                        revert with 0, 'SafeMath'
                if not arg2:
                    revert with 0, '', 0
                if arg2 * arg2 / arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2:
                    revert with 0, '', 0
                if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2 * arg2:
                    revert with 0, '', 0
                return (0 / arg2 * arg2 * arg2)
            if arg1 * arg1 / arg1 != arg1:
                revert with 0, 'SafeMath'
            require arg1 * arg1 >= 0
            if not arg3 * arg1:
                if not arg2:
                    revert with 0, '', 0
                if arg2 * arg2 / arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2:
                    revert with 0, '', 0
                if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2 * arg2:
                    revert with 0, '', 0
                return (0 / arg2 * arg2 * arg2)
            if arg1 * arg1 * arg3 * arg1 / arg3 * arg1 != arg1 * arg1:
                revert with 0, 'SafeMath'
            if not arg2:
                revert with 0, '', 0
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2:
                revert with 0, '', 0
            if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2 * arg2:
                revert with 0, '', 0
            return (arg1 * arg1 * arg3 * arg1 / arg2 * arg2 * arg2)
        if 2 * arg1 * arg2 / arg1 * arg2 != 2:
            revert with 0, 'SafeMath'
        if not arg1:
            if 2 * arg1 * arg2 > 0:
                revert with 0, '', 0
            require -2 * arg1 * arg2 >= -2 * arg1 * arg2
            if not arg3 * arg1:
                if not arg2:
                    revert with 0, '', 0
                if arg2 * arg2 / arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2:
                    revert with 0, '', 0
                if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2 * arg2:
                    revert with 0, '', 0
                return (0 / arg2 * arg2 * arg2)
            if -1 * 2 * arg1 * arg2 * arg3 * arg1 / arg3 * arg1 != -2 * arg1 * arg2:
                revert with 0, 'SafeMath'
            if not arg2:
                revert with 0, '', 0
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2:
                revert with 0, '', 0
            if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2 * arg2:
                revert with 0, '', 0
            return (-1 * 2 * arg1 * arg2 * arg3 * arg1 / arg2 * arg2 * arg2)
        if arg1 * arg1 / arg1 != arg1:
            revert with 0, 'SafeMath'
        if 2 * arg1 * arg2 > 0:
            revert with 0, '', 0
        require (arg1 * arg1) - (2 * arg1 * arg2) >= -2 * arg1 * arg2
        if not arg3 * arg1:
            if not arg2:
                revert with 0, '', 0
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2:
                revert with 0, '', 0
            if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2 * arg2:
                revert with 0, '', 0
            return (0 / arg2 * arg2 * arg2)
        if (arg1 * arg1 * arg3 * arg1) - (2 * arg1 * arg2 * arg3 * arg1) / arg3 * arg1 != (arg1 * arg1) - (2 * arg1 * arg2):
            revert with 0, 'SafeMath'
        if not arg2:
            revert with 0, '', 0
        if arg2 * arg2 / arg2 != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * arg2:
            revert with 0, '', 0
        if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * arg2 * arg2:
            revert with 0, '', 0
        return ((arg1 * arg1 * arg3 * arg1) - (2 * arg1 * arg2 * arg3 * arg1) / arg2 * arg2 * arg2)
    if 2 * arg2 * arg2 / arg2 * arg2 != 2:
        revert with 0, 'SafeMath'
    if not arg2:
        if not arg1:
            if 0 > 2 * arg2 * arg2:
                revert with 0, '', 0
            require 2 * arg2 * arg2 >= 2 * arg2 * arg2
            if not arg3 * arg1:
                if not arg2:
                    revert with 0, '', 0
                if arg2 * arg2 / arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2:
                    revert with 0, '', 0
                if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2 * arg2:
                    revert with 0, '', 0
                return (0 / arg2 * arg2 * arg2)
            if 2 * arg2 * arg2 * arg3 * arg1 / arg3 * arg1 != 2 * arg2 * arg2:
                revert with 0, 'SafeMath'
            if not arg2:
                revert with 0, '', 0
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2:
                revert with 0, '', 0
            if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2 * arg2:
                revert with 0, '', 0
            return (2 * arg2 * arg2 * arg3 * arg1 / arg2 * arg2 * arg2)
        if arg1 * arg1 / arg1 != arg1:
            revert with 0, 'SafeMath'
        if 0 > 2 * arg2 * arg2:
            revert with 0, '', 0
        require (arg1 * arg1) + (2 * arg2 * arg2) >= 2 * arg2 * arg2
        if not arg3 * arg1:
            if not arg2:
                revert with 0, '', 0
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2:
                revert with 0, '', 0
            if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2 * arg2:
                revert with 0, '', 0
            return (0 / arg2 * arg2 * arg2)
        if (arg1 * arg1 * arg3 * arg1) + (2 * arg2 * arg2 * arg3 * arg1) / arg3 * arg1 != (arg1 * arg1) + (2 * arg2 * arg2):
            revert with 0, 'SafeMath'
        if not arg2:
            revert with 0, '', 0
        if arg2 * arg2 / arg2 != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * arg2:
            revert with 0, '', 0
        if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * arg2 * arg2:
            revert with 0, '', 0
        return ((arg1 * arg1 * arg3 * arg1) + (2 * arg2 * arg2 * arg3 * arg1) / arg2 * arg2 * arg2)
    if arg1 * arg2 / arg2 != arg1:
        revert with 0, 'SafeMath'
    if not arg1 * arg2:
        if not arg1:
            if 0 > 2 * arg2 * arg2:
                revert with 0, '', 0
            require 2 * arg2 * arg2 >= 2 * arg2 * arg2
            if not arg3 * arg1:
                if not arg2:
                    revert with 0, '', 0
                if arg2 * arg2 / arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2:
                    revert with 0, '', 0
                if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * arg2 * arg2:
                    revert with 0, '', 0
                return (0 / arg2 * arg2 * arg2)
            if 2 * arg2 * arg2 * arg3 * arg1 / arg3 * arg1 != 2 * arg2 * arg2:
                revert with 0, 'SafeMath'
            if not arg2:
                revert with 0, '', 0
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2:
                revert with 0, '', 0
            if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2 * arg2:
                revert with 0, '', 0
            return (2 * arg2 * arg2 * arg3 * arg1 / arg2 * arg2 * arg2)
        if arg1 * arg1 / arg1 != arg1:
            revert with 0, 'SafeMath'
        if 0 > 2 * arg2 * arg2:
            revert with 0, '', 0
        require (arg1 * arg1) + (2 * arg2 * arg2) >= 2 * arg2 * arg2
        if not arg3 * arg1:
            if not arg2:
                revert with 0, '', 0
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2:
                revert with 0, '', 0
            if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2 * arg2:
                revert with 0, '', 0
            return (0 / arg2 * arg2 * arg2)
        if (arg1 * arg1 * arg3 * arg1) + (2 * arg2 * arg2 * arg3 * arg1) / arg3 * arg1 != (arg1 * arg1) + (2 * arg2 * arg2):
            revert with 0, 'SafeMath'
        if not arg2:
            revert with 0, '', 0
        if arg2 * arg2 / arg2 != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * arg2:
            revert with 0, '', 0
        if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * arg2 * arg2:
            revert with 0, '', 0
        return ((arg1 * arg1 * arg3 * arg1) + (2 * arg2 * arg2 * arg3 * arg1) / arg2 * arg2 * arg2)
    if 2 * arg1 * arg2 / arg1 * arg2 != 2:
        revert with 0, 'SafeMath'
    if not arg1:
        if 2 * arg1 * arg2 > 2 * arg2 * arg2:
            revert with 0, '', 0
        if not arg3 * arg1:
            if not arg2:
                revert with 0, '', 0
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2:
                revert with 0, '', 0
            if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * arg2 * arg2:
                revert with 0, '', 0
            return (0 / arg2 * arg2 * arg2)
        if (2 * arg2 * arg2 * arg3 * arg1) - (2 * arg1 * arg2 * arg3 * arg1) / arg3 * arg1 != (2 * arg2 * arg2) - (2 * arg1 * arg2):
            revert with 0, 'SafeMath'
        if not arg2:
            revert with 0, '', 0
        if arg2 * arg2 / arg2 != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * arg2:
            revert with 0, '', 0
        if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * arg2 * arg2:
            revert with 0, '', 0
        return ((2 * arg2 * arg2 * arg3 * arg1) - (2 * arg1 * arg2 * arg3 * arg1) / arg2 * arg2 * arg2)
    if arg1 * arg1 / arg1 != arg1:
        revert with 0, 'SafeMath'
    if 2 * arg1 * arg2 > 2 * arg2 * arg2:
        revert with 0, '', 0
    require arg1 * arg1 >= 0
    if not arg3 * arg1:
        if not arg2:
            revert with 0, '', 0
        if arg2 * arg2 / arg2 != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * arg2:
            revert with 0, '', 0
        if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * arg2 * arg2:
            revert with 0, '', 0
        return (0 / arg2 * arg2 * arg2)
    if (arg1 * arg1 * arg3 * arg1) + (2 * arg2 * arg2 * arg3 * arg1) - (2 * arg1 * arg2 * arg3 * arg1) / arg3 * arg1 != (arg1 * arg1) + (2 * arg2 * arg2) - (2 * arg1 * arg2):
        revert with 0, 'SafeMath'
    if not arg2:
        revert with 0, '', 0
    if arg2 * arg2 / arg2 != arg2:
        revert with 0, 'SafeMath'
    if not arg2 * arg2:
        revert with 0, '', 0
    if arg2 * arg2 * arg2 / arg2 * arg2 != arg2:
        revert with 0, 'SafeMath'
    if not arg2 * arg2 * arg2:
        revert with 0, '', 0
    return ((arg1 * arg1 * arg3 * arg1) + (2 * arg2 * arg2 * arg3 * arg1) - (2 * arg1 * arg2 * arg3 * arg1) / arg2 * arg2 * arg2)
}

function getPoolAPY(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).baseAmtStaked() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).baseAmt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                revert with 0, 'SafeMath'
            if 2 * ext_call.return_data[0]:
                if 10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10000:
                    revert with 0, 'SafeMath'
        revert with 0, '', 0
    if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
        revert with 0, 'SafeMath'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).baseAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not 2 * ext_call.return_data[0]:
            revert with 0, '', 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).tokenAmtStaked() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).tokenAmt() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                    revert with 0, 'SafeMath'
                if 2 * ext_call.return_data[0]:
                    if 10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10000:
                        revert with 0, 'SafeMath'
            revert with 0, '', 0
        if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
            revert with 0, 'SafeMath'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).tokenAmt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not 2 * ext_call.return_data[0]:
                revert with 0, '', 0
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.0x98fabd3a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).ROUTER() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).genesis() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + (24 * 3600) >= ext_call.return_data[0]
            if block.timestamp < ext_call.return_data[0] + (24 * 3600):
                if not uint255(0 / 2 * ext_call.return_data[0]):
                    return 0
                if 365 * uint255(0 / 2 * ext_call.return_data[0]) / uint255(0 / 2 * ext_call.return_data[0]) != 365:
                    revert with 0, 'SafeMath'
                return (365 * uint255(0 / 2 * ext_call.return_data[0]))
            if ext_call.return_data[0] > block.timestamp:
                revert with 0, '', 0
            if not uint255(0 / 2 * ext_call.return_data[0]):
                if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
                    revert with 0, '', 0
                return (0 / block.timestamp - ext_call.return_data[0] / 24 * 3600)
            if 365 * uint255(0 / 2 * ext_call.return_data[0]) / uint255(0 / 2 * ext_call.return_data[0]) != 365:
                revert with 0, 'SafeMath'
            if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
                revert with 0, '', 0
            return (365 * uint255(0 / 2 * ext_call.return_data[0]) / block.timestamp - ext_call.return_data[0] / 24 * 3600)
        if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
            revert with 0, 'SafeMath'
        if not 2 * ext_call.return_data[0]:
            if not 2 * ext_call.return_data[0]:
                revert with 0, '', 0
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.0x98fabd3a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).ROUTER() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).genesis() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + (24 * 3600) >= ext_call.return_data[0]
            if block.timestamp < ext_call.return_data[0] + (24 * 3600):
                if not uint255(0 / 2 * ext_call.return_data[0]):
                    return 0
                if 365 * uint255(0 / 2 * ext_call.return_data[0]) / uint255(0 / 2 * ext_call.return_data[0]) != 365:
                    revert with 0, 'SafeMath'
                return (365 * uint255(0 / 2 * ext_call.return_data[0]))
            if ext_call.return_data[0] > block.timestamp:
                revert with 0, '', 0
            if not uint255(0 / 2 * ext_call.return_data[0]):
                if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
                    revert with 0, '', 0
                return (0 / block.timestamp - ext_call.return_data[0] / 24 * 3600)
            if 365 * uint255(0 / 2 * ext_call.return_data[0]) / uint255(0 / 2 * ext_call.return_data[0]) != 365:
                revert with 0, 'SafeMath'
            if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
                revert with 0, '', 0
            return (365 * uint255(0 / 2 * ext_call.return_data[0]) / block.timestamp - ext_call.return_data[0] / 24 * 3600)
        if 10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10000:
            revert with 0, 'SafeMath'
        if not 2 * ext_call.return_data[0]:
            revert with 0, '', 0
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.0x98fabd3a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).ROUTER() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).genesis() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + (24 * 3600) >= ext_call.return_data[0]
        if block.timestamp < ext_call.return_data[0] + (24 * 3600):
            if not (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2:
                return 0
            if 365 * (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2 / (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2 != 365:
                revert with 0, 'SafeMath'
            return (365 * (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2)
        if ext_call.return_data[0] > block.timestamp:
            revert with 0, '', 0
        if not (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2:
            if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
                revert with 0, '', 0
            return (0 / block.timestamp - ext_call.return_data[0] / 24 * 3600)
        if 365 * (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2 / (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2 != 365:
            revert with 0, 'SafeMath'
        if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
            revert with 0, '', 0
        return (365 * (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2 / block.timestamp - ext_call.return_data[0] / 24 * 3600)
    if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
        revert with 0, 'SafeMath'
    if not 2 * ext_call.return_data[0]:
        if not 2 * ext_call.return_data[0]:
            revert with 0, '', 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).tokenAmtStaked() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).tokenAmt() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                    revert with 0, 'SafeMath'
                if 2 * ext_call.return_data[0]:
                    if 10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10000:
                        revert with 0, 'SafeMath'
            revert with 0, '', 0
        if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
            revert with 0, 'SafeMath'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).tokenAmt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not 2 * ext_call.return_data[0]:
                revert with 0, '', 0
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.0x98fabd3a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).ROUTER() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).genesis() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + (24 * 3600) >= ext_call.return_data[0]
            if block.timestamp < ext_call.return_data[0] + (24 * 3600):
                if not uint255(0 / 2 * ext_call.return_data[0]):
                    return 0
                if 365 * uint255(0 / 2 * ext_call.return_data[0]) / uint255(0 / 2 * ext_call.return_data[0]) != 365:
                    revert with 0, 'SafeMath'
                return (365 * uint255(0 / 2 * ext_call.return_data[0]))
            if ext_call.return_data[0] > block.timestamp:
                revert with 0, '', 0
            if not uint255(0 / 2 * ext_call.return_data[0]):
                if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
                    revert with 0, '', 0
                return (0 / block.timestamp - ext_call.return_data[0] / 24 * 3600)
            if 365 * uint255(0 / 2 * ext_call.return_data[0]) / uint255(0 / 2 * ext_call.return_data[0]) != 365:
                revert with 0, 'SafeMath'
            if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
                revert with 0, '', 0
            return (365 * uint255(0 / 2 * ext_call.return_data[0]) / block.timestamp - ext_call.return_data[0] / 24 * 3600)
        if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
            revert with 0, 'SafeMath'
        if not 2 * ext_call.return_data[0]:
            if not 2 * ext_call.return_data[0]:
                revert with 0, '', 0
            require ext_code.size(BASEAddress)
            staticcall BASEAddress.0x98fabd3a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).ROUTER() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).genesis() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + (24 * 3600) >= ext_call.return_data[0]
            if block.timestamp < ext_call.return_data[0] + (24 * 3600):
                if not uint255(0 / 2 * ext_call.return_data[0]):
                    return 0
                if 365 * uint255(0 / 2 * ext_call.return_data[0]) / uint255(0 / 2 * ext_call.return_data[0]) != 365:
                    revert with 0, 'SafeMath'
                return (365 * uint255(0 / 2 * ext_call.return_data[0]))
            if ext_call.return_data[0] > block.timestamp:
                revert with 0, '', 0
            if not uint255(0 / 2 * ext_call.return_data[0]):
                if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
                    revert with 0, '', 0
                return (0 / block.timestamp - ext_call.return_data[0] / 24 * 3600)
            if 365 * uint255(0 / 2 * ext_call.return_data[0]) / uint255(0 / 2 * ext_call.return_data[0]) != 365:
                revert with 0, 'SafeMath'
            if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
                revert with 0, '', 0
            return (365 * uint255(0 / 2 * ext_call.return_data[0]) / block.timestamp - ext_call.return_data[0] / 24 * 3600)
        if 10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10000:
            revert with 0, 'SafeMath'
        if not 2 * ext_call.return_data[0]:
            revert with 0, '', 0
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.0x98fabd3a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).ROUTER() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).genesis() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + (24 * 3600) >= ext_call.return_data[0]
        if block.timestamp < ext_call.return_data[0] + (24 * 3600):
            if not (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2:
                return 0
            if 365 * (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2 / (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2 != 365:
                revert with 0, 'SafeMath'
            return (365 * (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2)
        if ext_call.return_data[0] > block.timestamp:
            revert with 0, '', 0
        if not (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2:
            if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
                revert with 0, '', 0
            return (0 / block.timestamp - ext_call.return_data[0] / 24 * 3600)
        if 365 * (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2 / (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2 != 365:
            revert with 0, 'SafeMath'
        if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
            revert with 0, '', 0
        return (365 * (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + (0 / 2 * ext_call.return_data[0]) / 2 / block.timestamp - ext_call.return_data[0] / 24 * 3600)
    if 10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10000:
        revert with 0, 'SafeMath'
    if not 2 * ext_call.return_data[0]:
        revert with 0, '', 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).tokenAmtStaked() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).tokenAmt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                revert with 0, 'SafeMath'
            if 2 * ext_call.return_data[0]:
                if 10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10000:
                    revert with 0, 'SafeMath'
        revert with 0, '', 0
    if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
        revert with 0, 'SafeMath'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).tokenAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not 2 * ext_call.return_data[0]:
            revert with 0, '', 0
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.0x98fabd3a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).ROUTER() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).genesis() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + (24 * 3600) >= ext_call.return_data[0]
        if block.timestamp < ext_call.return_data[0] + (24 * 3600):
            if not (0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2:
                return 0
            if 365 * (0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2 / (0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2 != 365:
                revert with 0, 'SafeMath'
            return (365 * (0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2)
        if ext_call.return_data[0] > block.timestamp:
            revert with 0, '', 0
        if not (0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2:
            if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
                revert with 0, '', 0
            return (0 / block.timestamp - ext_call.return_data[0] / 24 * 3600)
        if 365 * (0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2 / (0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2 != 365:
            revert with 0, 'SafeMath'
        if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
            revert with 0, '', 0
        return (365 * (0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2 / block.timestamp - ext_call.return_data[0] / 24 * 3600)
    if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
        revert with 0, 'SafeMath'
    if not 2 * ext_call.return_data[0]:
        if not 2 * ext_call.return_data[0]:
            revert with 0, '', 0
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.0x98fabd3a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).ROUTER() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).genesis() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + (24 * 3600) >= ext_call.return_data[0]
        if block.timestamp < ext_call.return_data[0] + (24 * 3600):
            if not (0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2:
                return 0
            if 365 * (0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2 / (0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2 != 365:
                revert with 0, 'SafeMath'
            return (365 * (0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2)
        if ext_call.return_data[0] > block.timestamp:
            revert with 0, '', 0
        if not (0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2:
            if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
                revert with 0, '', 0
            return (0 / block.timestamp - ext_call.return_data[0] / 24 * 3600)
        if 365 * (0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2 / (0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2 != 365:
            revert with 0, 'SafeMath'
        if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
            revert with 0, '', 0
        return (365 * (0 / 2 * ext_call.return_data[0]) + (10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / 2 / block.timestamp - ext_call.return_data[0] / 24 * 3600)
    if 10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10000:
        revert with 0, 'SafeMath'
    if not 2 * ext_call.return_data[0]:
        revert with 0, '', 0
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).genesis() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + (24 * 3600) >= ext_call.return_data[0]
    if block.timestamp < ext_call.return_data[0] + (24 * 3600):
        if not uint255(10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]):
            return 0
        if 365 * uint255(10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / uint255(10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) != 365:
            revert with 0, 'SafeMath'
        return (365 * uint255(10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]))
    if ext_call.return_data[0] > block.timestamp:
        revert with 0, '', 0
    if not uint255(10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]):
        if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
            revert with 0, '', 0
        return (0 / block.timestamp - ext_call.return_data[0] / 24 * 3600)
    if 365 * uint255(10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / uint255(10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) != 365:
        revert with 0, 'SafeMath'
    if not block.timestamp - ext_call.return_data[0] / 24 * 3600:
        revert with 0, '', 0
    return (365 * uint255(10000 * 2 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) / block.timestamp - ext_call.return_data[0] / 24 * 3600)
}

function getPoolShareAssym(address arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x98fabd3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ROUTER() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbbe4f6db with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg3:
        staticcall address(ext_call.return_data[0]).tokenAmt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    if arg2:
                        if arg2 * arg2 / arg2 != arg2:
                            revert with 0, 'SafeMath'
                        require arg2 * arg2 >= 0
                else:
                    if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                        revert with 0, 'SafeMath'
                    if not arg2 * ext_call.return_data[0]:
                        if arg2:
                            if arg2 * arg2 / arg2 != arg2:
                                revert with 0, 'SafeMath'
                            require arg2 * arg2 >= 0
                    else:
                        if 2 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] != 2:
                            revert with 0, 'SafeMath'
                        if not arg2:
                            if 2 * arg2 * ext_call.return_data[0] > 0:
                                revert with 0, '', 0
                            require -2 * arg2 * ext_call.return_data[0] >= -2 * arg2 * ext_call.return_data[0]
                        else:
                            if arg2 * arg2 / arg2 != arg2:
                                revert with 0, 'SafeMath'
                            if 2 * arg2 * ext_call.return_data[0] > 0:
                                revert with 0, '', 0
                            require (arg2 * arg2) - (2 * arg2 * ext_call.return_data[0]) >= -2 * arg2 * ext_call.return_data[0]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if arg2:
                            if arg2 * arg2 / arg2 != arg2:
                                revert with 0, 'SafeMath'
                            require arg2 * arg2 >= 0
                    else:
                        if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                            revert with 0, 'SafeMath'
                        if not arg2 * ext_call.return_data[0]:
                            if arg2:
                                if arg2 * arg2 / arg2 != arg2:
                                    revert with 0, 'SafeMath'
                                require arg2 * arg2 >= 0
                        else:
                            if 2 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] != 2:
                                revert with 0, 'SafeMath'
                            if not arg2:
                                if 2 * arg2 * ext_call.return_data[0] > 0:
                                    revert with 0, '', 0
                                require -2 * arg2 * ext_call.return_data[0] >= -2 * arg2 * ext_call.return_data[0]
                            else:
                                if arg2 * arg2 / arg2 != arg2:
                                    revert with 0, 'SafeMath'
                                if 2 * arg2 * ext_call.return_data[0] > 0:
                                    revert with 0, '', 0
                                require (arg2 * arg2) - (2 * arg2 * ext_call.return_data[0]) >= -2 * arg2 * ext_call.return_data[0]
                else:
                    if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 2:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0]:
                        if not arg2:
                            if 0 > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, '', 0
                            require 2 * ext_call.return_data[0] * ext_call.return_data[0] >= 2 * ext_call.return_data[0] * ext_call.return_data[0]
                        else:
                            if arg2 * arg2 / arg2 != arg2:
                                revert with 0, 'SafeMath'
                            if 0 > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, '', 0
                            require (arg2 * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0]) >= 2 * ext_call.return_data[0] * ext_call.return_data[0]
                    else:
                        if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                            revert with 0, 'SafeMath'
                        if not arg2 * ext_call.return_data[0]:
                            if not arg2:
                                if 0 > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                                    revert with 0, '', 0
                                require 2 * ext_call.return_data[0] * ext_call.return_data[0] >= 2 * ext_call.return_data[0] * ext_call.return_data[0]
                            else:
                                if arg2 * arg2 / arg2 != arg2:
                                    revert with 0, 'SafeMath'
                                if 0 > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                                    revert with 0, '', 0
                                require (arg2 * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0]) >= 2 * ext_call.return_data[0] * ext_call.return_data[0]
                        else:
                            if 2 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] != 2:
                                revert with 0, 'SafeMath'
                            if not arg2:
                                if 2 * arg2 * ext_call.return_data[0] > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                                    revert with 0, '', 0
                            else:
                                if arg2 * arg2 / arg2 != arg2:
                                    revert with 0, 'SafeMath'
                                if 2 * arg2 * ext_call.return_data[0] > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                                    revert with 0, '', 0
                                require arg2 * arg2 >= 0
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return 0, 
                   0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                   0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if not arg2:
                    if ext_call.return_data[0] * arg2:
                        if 0 / ext_call.return_data[0] * arg2:
                            revert with 0, 'SafeMath'
                    if not ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    return 0, 
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
                if arg2 * arg2 / arg2 != arg2:
                    revert with 0, 'SafeMath'
                require arg2 * arg2 >= 0
                if not ext_call.return_data[0] * arg2:
                    if not ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    return 0, 
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
                if arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != arg2 * arg2:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0, 
                       arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                       arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * ext_call.return_data[0]:
                if not arg2:
                    if ext_call.return_data[0] * arg2:
                        if 0 / ext_call.return_data[0] * arg2:
                            revert with 0, 'SafeMath'
                    if not ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    return 0, 
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
                if arg2 * arg2 / arg2 != arg2:
                    revert with 0, 'SafeMath'
                require arg2 * arg2 >= 0
                if not ext_call.return_data[0] * arg2:
                    if not ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    return 0, 
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
                if arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != arg2 * arg2:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0, 
                       arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                       arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if 2 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] != 2:
                revert with 0, 'SafeMath'
            if not arg2:
                if 2 * arg2 * ext_call.return_data[0] > 0:
                    revert with 0, '', 0
                require -2 * arg2 * ext_call.return_data[0] >= -2 * arg2 * ext_call.return_data[0]
                if not ext_call.return_data[0] * arg2:
                    if not ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    return 0, 
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
                if -1 * 2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != -2 * arg2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0, 
                       -1 * 2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                       -1 * 2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if 2 * arg2 * ext_call.return_data[0] > 0:
                revert with 0, '', 0
            require (arg2 * arg2) - (2 * arg2 * ext_call.return_data[0]) >= -2 * arg2 * ext_call.return_data[0]
            if not ext_call.return_data[0] * arg2:
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0, 
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if (arg2 * arg2 * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * arg2 != (arg2 * arg2) - (2 * arg2 * ext_call.return_data[0]):
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return 0, 
                   (arg2 * arg2 * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                   (arg2 * arg2 * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if not arg2:
                    if ext_call.return_data[0] * arg2:
                        if 0 / ext_call.return_data[0] * arg2:
                            revert with 0, 'SafeMath'
                    if not ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    return 0, 
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
                if arg2 * arg2 / arg2 != arg2:
                    revert with 0, 'SafeMath'
                require arg2 * arg2 >= 0
                if not ext_call.return_data[0] * arg2:
                    if not ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    return 0, 
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
                if arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != arg2 * arg2:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0, 
                       arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                       arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                revert with 0, 'SafeMath'
            if not arg2 * ext_call.return_data[0]:
                if not arg2:
                    if ext_call.return_data[0] * arg2:
                        if 0 / ext_call.return_data[0] * arg2:
                            revert with 0, 'SafeMath'
                    if not ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    return 0, 
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
                if arg2 * arg2 / arg2 != arg2:
                    revert with 0, 'SafeMath'
                require arg2 * arg2 >= 0
                if not ext_call.return_data[0] * arg2:
                    if not ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    return 0, 
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
                if arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != arg2 * arg2:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0, 
                       arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                       arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if 2 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] != 2:
                revert with 0, 'SafeMath'
            if not arg2:
                if 2 * arg2 * ext_call.return_data[0] > 0:
                    revert with 0, '', 0
                require -2 * arg2 * ext_call.return_data[0] >= -2 * arg2 * ext_call.return_data[0]
                if not ext_call.return_data[0] * arg2:
                    if not ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    return 0, 
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
                if -1 * 2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != -2 * arg2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0, 
                       -1 * 2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                       -1 * 2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if 2 * arg2 * ext_call.return_data[0] > 0:
                revert with 0, '', 0
            require (arg2 * arg2) - (2 * arg2 * ext_call.return_data[0]) >= -2 * arg2 * ext_call.return_data[0]
            if not ext_call.return_data[0] * arg2:
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0, 
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if (arg2 * arg2 * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * arg2 != (arg2 * arg2) - (2 * arg2 * ext_call.return_data[0]):
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return 0, 
                   (arg2 * arg2 * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                   (arg2 * arg2 * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 2:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0]:
            if not arg2:
                if 0 > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                require 2 * ext_call.return_data[0] * ext_call.return_data[0] >= 2 * ext_call.return_data[0] * ext_call.return_data[0]
                if not ext_call.return_data[0] * arg2:
                    if not ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    return 0, 
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
                if 2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0, 
                       2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                       2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if 0 > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            require (arg2 * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0]) >= 2 * ext_call.return_data[0] * ext_call.return_data[0]
            if not ext_call.return_data[0] * arg2:
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0, 
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * arg2 != (arg2 * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0]):
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return 0, 
                   (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                   (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * ext_call.return_data[0]:
            if not arg2:
                if 0 > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                require 2 * ext_call.return_data[0] * ext_call.return_data[0] >= 2 * ext_call.return_data[0] * ext_call.return_data[0]
                if not ext_call.return_data[0] * arg2:
                    if not ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath'
                    if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, '', 0
                    return 0, 
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                           0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
                if 2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0, 
                       2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                       2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            if 0 > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            require (arg2 * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0]) >= 2 * ext_call.return_data[0] * ext_call.return_data[0]
            if not ext_call.return_data[0] * arg2:
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0, 
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * arg2 != (arg2 * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0]):
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return 0, 
                   (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                   (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if 2 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] != 2:
            revert with 0, 'SafeMath'
        if not arg2:
            if 2 * arg2 * ext_call.return_data[0] > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if not ext_call.return_data[0] * arg2:
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0, 
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * arg2 != (2 * ext_call.return_data[0] * ext_call.return_data[0]) - (2 * arg2 * ext_call.return_data[0]):
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return 0, 
                   (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                   (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if arg2 * arg2 / arg2 != arg2:
            revert with 0, 'SafeMath'
        if 2 * arg2 * ext_call.return_data[0] > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        require arg2 * arg2 >= 0
        if not ext_call.return_data[0] * arg2:
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return 0, 
                   0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                   0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * arg2 != (arg2 * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0]) - (2 * arg2 * ext_call.return_data[0]):
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        return 0, 
               (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
               (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
    staticcall address(ext_call.return_data[0]).baseAmt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if arg2:
                    if arg2 * arg2 / arg2 != arg2:
                        revert with 0, 'SafeMath'
                    require arg2 * arg2 >= 0
            else:
                if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                    revert with 0, 'SafeMath'
                if not arg2 * ext_call.return_data[0]:
                    if arg2:
                        if arg2 * arg2 / arg2 != arg2:
                            revert with 0, 'SafeMath'
                        require arg2 * arg2 >= 0
                else:
                    if 2 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] != 2:
                        revert with 0, 'SafeMath'
                    if not arg2:
                        if 2 * arg2 * ext_call.return_data[0] > 0:
                            revert with 0, '', 0
                        require -2 * arg2 * ext_call.return_data[0] >= -2 * arg2 * ext_call.return_data[0]
                    else:
                        if arg2 * arg2 / arg2 != arg2:
                            revert with 0, 'SafeMath'
                        if 2 * arg2 * ext_call.return_data[0] > 0:
                            revert with 0, '', 0
                        require (arg2 * arg2) - (2 * arg2 * ext_call.return_data[0]) >= -2 * arg2 * ext_call.return_data[0]
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    if arg2:
                        if arg2 * arg2 / arg2 != arg2:
                            revert with 0, 'SafeMath'
                        require arg2 * arg2 >= 0
                else:
                    if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                        revert with 0, 'SafeMath'
                    if not arg2 * ext_call.return_data[0]:
                        if arg2:
                            if arg2 * arg2 / arg2 != arg2:
                                revert with 0, 'SafeMath'
                            require arg2 * arg2 >= 0
                    else:
                        if 2 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] != 2:
                            revert with 0, 'SafeMath'
                        if not arg2:
                            if 2 * arg2 * ext_call.return_data[0] > 0:
                                revert with 0, '', 0
                            require -2 * arg2 * ext_call.return_data[0] >= -2 * arg2 * ext_call.return_data[0]
                        else:
                            if arg2 * arg2 / arg2 != arg2:
                                revert with 0, 'SafeMath'
                            if 2 * arg2 * ext_call.return_data[0] > 0:
                                revert with 0, '', 0
                            require (arg2 * arg2) - (2 * arg2 * ext_call.return_data[0]) >= -2 * arg2 * ext_call.return_data[0]
            else:
                if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 2:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0]:
                    if not arg2:
                        if 0 > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, '', 0
                        require 2 * ext_call.return_data[0] * ext_call.return_data[0] >= 2 * ext_call.return_data[0] * ext_call.return_data[0]
                    else:
                        if arg2 * arg2 / arg2 != arg2:
                            revert with 0, 'SafeMath'
                        if 0 > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, '', 0
                        require (arg2 * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0]) >= 2 * ext_call.return_data[0] * ext_call.return_data[0]
                else:
                    if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                        revert with 0, 'SafeMath'
                    if not arg2 * ext_call.return_data[0]:
                        if not arg2:
                            if 0 > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, '', 0
                            require 2 * ext_call.return_data[0] * ext_call.return_data[0] >= 2 * ext_call.return_data[0] * ext_call.return_data[0]
                        else:
                            if arg2 * arg2 / arg2 != arg2:
                                revert with 0, 'SafeMath'
                            if 0 > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, '', 0
                            require (arg2 * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0]) >= 2 * ext_call.return_data[0] * ext_call.return_data[0]
                    else:
                        if 2 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] != 2:
                            revert with 0, 'SafeMath'
                        if not arg2:
                            if 2 * arg2 * ext_call.return_data[0] > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, '', 0
                        else:
                            if arg2 * arg2 / arg2 != arg2:
                                revert with 0, 'SafeMath'
                            if 2 * arg2 * ext_call.return_data[0] > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, '', 0
                            require arg2 * arg2 >= 0
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
               0,
               0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
    if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            if not arg2:
                if ext_call.return_data[0] * arg2:
                    if 0 / ext_call.return_data[0] * arg2:
                        revert with 0, 'SafeMath'
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                       0,
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            require arg2 * arg2 >= 0
            if not ext_call.return_data[0] * arg2:
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                       0,
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != arg2 * arg2:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                   0,
                   arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * ext_call.return_data[0]:
            if not arg2:
                if ext_call.return_data[0] * arg2:
                    if 0 / ext_call.return_data[0] * arg2:
                        revert with 0, 'SafeMath'
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                       0,
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            require arg2 * arg2 >= 0
            if not ext_call.return_data[0] * arg2:
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                       0,
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != arg2 * arg2:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                   0,
                   arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if 2 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] != 2:
            revert with 0, 'SafeMath'
        if not arg2:
            if 2 * arg2 * ext_call.return_data[0] > 0:
                revert with 0, '', 0
            require -2 * arg2 * ext_call.return_data[0] >= -2 * arg2 * ext_call.return_data[0]
            if not ext_call.return_data[0] * arg2:
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                       0,
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if -1 * 2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != -2 * arg2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return -1 * 2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                   0,
                   -1 * 2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if arg2 * arg2 / arg2 != arg2:
            revert with 0, 'SafeMath'
        if 2 * arg2 * ext_call.return_data[0] > 0:
            revert with 0, '', 0
        require (arg2 * arg2) - (2 * arg2 * ext_call.return_data[0]) >= -2 * arg2 * ext_call.return_data[0]
        if not ext_call.return_data[0] * arg2:
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                   0,
                   0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if (arg2 * arg2 * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * arg2 != (arg2 * arg2) - (2 * arg2 * ext_call.return_data[0]):
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        return (arg2 * arg2 * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
               0,
               (arg2 * arg2 * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            if not arg2:
                if ext_call.return_data[0] * arg2:
                    if 0 / ext_call.return_data[0] * arg2:
                        revert with 0, 'SafeMath'
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                       0,
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            require arg2 * arg2 >= 0
            if not ext_call.return_data[0] * arg2:
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                       0,
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != arg2 * arg2:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                   0,
                   arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
            revert with 0, 'SafeMath'
        if not arg2 * ext_call.return_data[0]:
            if not arg2:
                if ext_call.return_data[0] * arg2:
                    if 0 / ext_call.return_data[0] * arg2:
                        revert with 0, 'SafeMath'
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                       0,
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if arg2 * arg2 / arg2 != arg2:
                revert with 0, 'SafeMath'
            require arg2 * arg2 >= 0
            if not ext_call.return_data[0] * arg2:
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                       0,
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != arg2 * arg2:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                   0,
                   arg2 * arg2 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if 2 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] != 2:
            revert with 0, 'SafeMath'
        if not arg2:
            if 2 * arg2 * ext_call.return_data[0] > 0:
                revert with 0, '', 0
            require -2 * arg2 * ext_call.return_data[0] >= -2 * arg2 * ext_call.return_data[0]
            if not ext_call.return_data[0] * arg2:
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                       0,
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if -1 * 2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != -2 * arg2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return -1 * 2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                   0,
                   -1 * 2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if arg2 * arg2 / arg2 != arg2:
            revert with 0, 'SafeMath'
        if 2 * arg2 * ext_call.return_data[0] > 0:
            revert with 0, '', 0
        require (arg2 * arg2) - (2 * arg2 * ext_call.return_data[0]) >= -2 * arg2 * ext_call.return_data[0]
        if not ext_call.return_data[0] * arg2:
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                   0,
                   0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if (arg2 * arg2 * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * arg2 != (arg2 * arg2) - (2 * arg2 * ext_call.return_data[0]):
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        return (arg2 * arg2 * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
               0,
               (arg2 * arg2 * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
    if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 2:
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0]:
        if not arg2:
            if 0 > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            require 2 * ext_call.return_data[0] * ext_call.return_data[0] >= 2 * ext_call.return_data[0] * ext_call.return_data[0]
            if not ext_call.return_data[0] * arg2:
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                       0,
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if 2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return 2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                   0,
                   2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if arg2 * arg2 / arg2 != arg2:
            revert with 0, 'SafeMath'
        if 0 > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        require (arg2 * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0]) >= 2 * ext_call.return_data[0] * ext_call.return_data[0]
        if not ext_call.return_data[0] * arg2:
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                   0,
                   0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * arg2 != (arg2 * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0]):
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        return (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
               0,
               (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
    if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
        revert with 0, 'SafeMath'
    if not arg2 * ext_call.return_data[0]:
        if not arg2:
            if 0 > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            require 2 * ext_call.return_data[0] * ext_call.return_data[0] >= 2 * ext_call.return_data[0] * ext_call.return_data[0]
            if not ext_call.return_data[0] * arg2:
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath'
                if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, '', 0
                return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                       0,
                       0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            if 2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 != 2 * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return 2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                   0,
                   2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if arg2 * arg2 / arg2 != arg2:
            revert with 0, 'SafeMath'
        if 0 > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        require (arg2 * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0]) >= 2 * ext_call.return_data[0] * ext_call.return_data[0]
        if not ext_call.return_data[0] * arg2:
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                   0,
                   0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * arg2 != (arg2 * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0]):
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        return (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
               0,
               (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
    if 2 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] != 2:
        revert with 0, 'SafeMath'
    if not arg2:
        if 2 * arg2 * ext_call.return_data[0] > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        if not ext_call.return_data[0] * arg2:
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath'
            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, '', 0
            return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                   0,
                   0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        if (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * arg2 != (2 * ext_call.return_data[0] * ext_call.return_data[0]) - (2 * arg2 * ext_call.return_data[0]):
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        return (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
               0,
               (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
    if arg2 * arg2 / arg2 != arg2:
        revert with 0, 'SafeMath'
    if 2 * arg2 * ext_call.return_data[0] > 2 * ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 0, '', 0
    require arg2 * arg2 >= 0
    if not ext_call.return_data[0] * arg2:
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath'
        if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, '', 0
        return 0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
               0,
               0 / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
    if (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * arg2 != (arg2 * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0]) - (2 * arg2 * ext_call.return_data[0]):
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 0, '', 0
    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath'
    if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 0, '', 0
    return (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
           0,
           (arg2 * arg2 * ext_call.return_data[0] * arg2) + (2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * arg2) - (2 * arg2 * ext_call.return_data[0] * ext_call.return_data[0] * arg2) / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
}



}
