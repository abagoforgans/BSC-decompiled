contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address _governanceAddress; offset 8
uint256 _qualityBase;
uint256 _maxGrade;
uint256 _maxGradeLong;
uint256 _maxTLevel;
uint8 stor5;
uint256 sub_7a21d5bf;
address sub_2abb8c47Address;
address sub_91c3e163Address;
address _costErc20PoolAddress;
address _factoryAddress;
mapping of struct _ruleData;
mapping of uint8 stor12;

function _governance() payable {
    return _governanceAddress
}

function _maxTLevel() payable {
    return _maxTLevel
}

function sub_2abb8c47(?) payable {
    return sub_2abb8c47Address
}

function _ruleSwitch(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function sub_7a21d5bf(?) payable {
    return sub_7a21d5bf
}

function _costErc20Pool() payable {
    return _costErc20PoolAddress
}

function sub_91c3e163(?) payable {
    return sub_91c3e163Address
}

function sub_9991302f(?) payable {
    return bool(stor5)
}

function _factory() payable {
    return _factoryAddress
}

function _ruleData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return _ruleData[arg1].field_0, 
           _ruleData[arg1].field_256,
           _ruleData[arg1].field_512,
           _ruleData[arg1].field_768,
           _ruleData[arg1].field_1024,
           _ruleData[arg1].field_1280,
           _ruleData[arg1].field_1536,
           bool(_ruleData[arg1].field_1792),
           bool(_ruleData[arg1].field_1800)
}

function _qualityBase() payable {
    return _qualityBase
}

function _maxGradeLong() payable {
    return _maxGradeLong
}

function _maxGrade() payable {
    return _maxGrade
}

function _fallback() payable {
    revert
}

function setMaxGrade(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _maxGrade = arg1
}

function setMaxTLevel(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _maxTLevel = arg1
}

function enableAirdrop(bool arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor5 = uint8(arg1)
}

function setFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _factoryAddress = arg1
}

function setQualityBase(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _qualityBase = arg1
}

function setMaxGradeLong(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _maxGradeLong = arg1
}

function setAirdropAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    sub_7a21d5bf = arg1
}

function setAirdropContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    sub_2abb8c47Address = arg1
}

function enableRule(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor12[arg1] = uint8(arg2)
}

function generate(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if _factoryAddress != msg.sender:
        revert with 0, ' invalid factory caller'
    if not stor12[arg2]:
        revert with 0, ' rule is closed '
    revert with 0, 'can't mint'
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not arg1:
        revert with 0, 'new governance the zero address'
    _governanceAddress = arg1
    emit GovernanceTransferred(_governanceAddress, arg1);
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if stor0:
        revert with 0, 'initialize: Already initialized!'
    _governanceAddress = msg.sender
    _costErc20PoolAddress = arg1
    sub_2abb8c47Address = arg2
    sub_91c3e163Address = arg3
    _qualityBase = 10000
    _maxGrade = 6
    _maxGradeLong = 20
    _maxTLevel = 6
    stor5 = 0
    sub_7a21d5bf = 5 * 10^15
    stor0 = 1
}

function setRuleData(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, address arg6, uint256 arg7, uint256 arg8, bool arg9, bool arg10) payable {
    require calldata.size - 4 >= 320
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _ruleData[arg1].field_0 = arg2
    _ruleData[arg1].field_256 = arg3
    _ruleData[arg1].field_512 = arg4
    _ruleData[arg1].field_768 = arg5
    _ruleData[arg1].field_1024 = arg6
    _ruleData[arg1].field_1280 = arg7
    _ruleData[arg1].field_1792 = uint8(arg9)
    _ruleData[arg1].field_1800 = Mask(248, 0, arg10)
    _ruleData[arg1].field_1536 = arg8
    stor12[arg1] = 0
    emit eSetRuleData(arg1, arg2, arg3, arg4, arg5, address(arg6), arg9, arg10, arg7);
}

function sub_d118dd43(?) payable {
    require calldata.size - 4 >= 416
    require calldata.size - 36 >= 384
    if _factoryAddress != msg.sender:
        revert with 0, ' invalid factory caller'
    require ext_code.size(_factoryAddress)
    staticcall _factoryAddress.isRulerProxyContract(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if block.timestamp - arg5 < _ruleData[arg3].field_1280:
            revert with 0, '< minBurnTime'
    require ext_code.size(sub_91c3e163Address)
    call sub_91c3e163Address.0xdd9a140e with:
         gas gas_remaining wei
        args address(arg4), address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8f019157(?) payable {
    require calldata.size - 4 >= 352
    require calldata.size - 4 >= 96
    require calldata.size - 100 >= 128
    require calldata.size - 228 >= 128
    if _factoryAddress != msg.sender:
        revert with 0, ' invalid factory caller'
    require calldata.size - 4 >= 96
    require calldata.size - 100 >= 128
    require calldata.size - 228 >= 128
    if _ruleData[arg3].field_512 > 0:
        if ext_code.hash(_ruleData[arg3].field_1024) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(_ruleData[arg3].field_1024):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[580 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, _costErc20PoolAddress, _ruleData[arg3].field_512, mem[580 len 28]
        call _ruleData[arg3].field_1024.mem[580 len 4] with:
             gas gas_remaining wei
            args mem[584 len 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if arg1 > 0:
                require arg1 >= 32
                if not arg2:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[612]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if stor5:
        require ext_code.size(sub_2abb8c47Address)
        call sub_2abb8c47Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), sub_7a21d5bf
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return arg2, _ruleData[arg3].field_768
}

function getGrade(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not _qualityBase:
        if arg1 < 0:
            return 1
    else:
        require _qualityBase
        if 500 * _qualityBase / _qualityBase != 500:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg1 < 500 * _qualityBase / 1000:
            return 1
    if not _qualityBase:
        if 0 <= arg1:
            if not _qualityBase:
                if arg1 < 0:
                    return 2
            else:
                require _qualityBase
                if 800 * _qualityBase / _qualityBase != 800:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < 800 * _qualityBase / 1000:
                    return 2
    else:
        require _qualityBase
        if 500 * _qualityBase / _qualityBase != 500:
            revert with 0, 'SafeMath: multiplication overflow'
        if 500 * _qualityBase / 1000 <= arg1:
            if not _qualityBase:
                if arg1 < 0:
                    return 2
            else:
                require _qualityBase
                if 800 * _qualityBase / _qualityBase != 800:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < 800 * _qualityBase / 1000:
                    return 2
    if not _qualityBase:
        if 0 <= arg1:
            if not _qualityBase:
                if arg1 < 0:
                    return 3
            else:
                require _qualityBase
                if 900 * _qualityBase / _qualityBase != 900:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < 900 * _qualityBase / 1000:
                    return 3
    else:
        require _qualityBase
        if 800 * _qualityBase / _qualityBase != 800:
            revert with 0, 'SafeMath: multiplication overflow'
        if 800 * _qualityBase / 1000 <= arg1:
            if not _qualityBase:
                if arg1 < 0:
                    return 3
            else:
                require _qualityBase
                if 900 * _qualityBase / _qualityBase != 900:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < 900 * _qualityBase / 1000:
                    return 3
    if not _qualityBase:
        if 0 <= arg1:
            if not _qualityBase:
                if arg1 < 0:
                    return 4
            else:
                require _qualityBase
                if 980 * _qualityBase / _qualityBase != 980:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < 980 * _qualityBase / 1000:
                    return 4
    else:
        require _qualityBase
        if 900 * _qualityBase / _qualityBase != 900:
            revert with 0, 'SafeMath: multiplication overflow'
        if 900 * _qualityBase / 1000 <= arg1:
            if not _qualityBase:
                if arg1 < 0:
                    return 4
            else:
                require _qualityBase
                if 980 * _qualityBase / _qualityBase != 980:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < 980 * _qualityBase / 1000:
                    return 4
    if not _qualityBase:
        if 0 > arg1:
            return 6
    else:
        require _qualityBase
        if 980 * _qualityBase / _qualityBase != 980:
            revert with 0, 'SafeMath: multiplication overflow'
        if 980 * _qualityBase / 1000 > arg1:
            return 6
    if not _qualityBase:
        if arg1 >= 0:
            return 6
    else:
        require _qualityBase
        if 998 * _qualityBase / _qualityBase != 998:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 >= 998 * _qualityBase / 1000:
            return 6
    return 5
}



}
