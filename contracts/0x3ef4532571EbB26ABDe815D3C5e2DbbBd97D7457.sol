contract main {




// =====================  Runtime code  =====================


#
#  - sub_4008fe92(?)
#  - claim()
#  - sub_dd9a140e(?)
#
uint256 stor0;
uint8 stor1;
uint8 stor1; offset 168
uint32 stor1;
uint128 stor1; offset 168
address _governanceAddress; offset 8
uint256 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
uint256 _qualityBase;
address sub_8285f8a5Address;
address sub_83f8a084Address;
address sub_533318e6Address;
address _tokenAddress;
uint256 sub_5705a763;
uint256 sub_4bce76b6;
mapping of struct sub_a6dbdebf;
mapping of uint256 sub_6fdfa882;
mapping of uint256 sub_dd60d916;
mapping of uint256 sub_b6e3f8b3;
uint256 stor15;
array of struct sub_0c74ab4c;
array of uint256 sub_f52b2ac3;
mapping of struct sub_2dabed79;
uint256 sub_5a0c7efb;
uint256 sub_05eab35f;

function sub_05eab35f(?) payable {
    return sub_05eab35f
}

function sub_0c74ab4c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_0c74ab4c.length
    return sub_0c74ab4c[arg1].field_0
}

function _governance() payable {
    return _governanceAddress
}

function sub_2dabed79(?) payable {
    require calldata.size - 4 >= 32
    return sub_2dabed79[arg1].field_0, 
           sub_2dabed79[arg1].field_256,
           sub_2dabed79[arg1].field_512,
           sub_2dabed79[arg1].field_768,
           sub_2dabed79[arg1].field_1024
}

function sub_4bce76b6(?) payable {
    return sub_4bce76b6
}

function sub_533318e6(?) payable {
    return sub_533318e6Address
}

function sub_5705a763(?) payable {
    return sub_5705a763
}

function sub_5a0c7efb(?) payable {
    return sub_5a0c7efb
}

function sub_6fdfa882(?) payable {
    require calldata.size - 4 >= 32
    return sub_6fdfa882[arg1]
}

function sub_8285f8a5(?) payable {
    return sub_8285f8a5Address
}

function sub_83f8a084(?) payable {
    return sub_83f8a084Address
}

function _isClaimStart() payable {
    return bool(uint8(stor1.field_168))
}

function sub_a6dbdebf(?) payable {
    require calldata.size - 4 >= 32
    return sub_a6dbdebf[arg1].field_0, sub_a6dbdebf[arg1].field_256, sub_a6dbdebf[arg1].field_512, sub_a6dbdebf[arg1].field_768
}

function sub_b6e3f8b3(?) payable {
    require calldata.size - 4 >= 32
    return sub_b6e3f8b3[arg1]
}

function _claimMembers(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function _whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function sub_dd60d916(?) payable {
    require calldata.size - 4 >= 32
    return sub_dd60d916[arg1]
}

function _qualityBase() payable {
    return _qualityBase
}

function _token() payable {
    return _tokenAddress
}

function sub_f52b2ac3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_f52b2ac3.length
    return sub_f52b2ac3[arg1]
}

function _fallback() payable {
    revert
}

function sub_eaec5c97(?) payable {
    require calldata.size - 4 >= 32
    return (sha3(block.difficulty, block.timestamp, arg1) % 10000)
}

function sub_41d713ea(?) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    sub_5a0c7efb = arg1
}

function sub_b0c56c02(?) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    sub_533318e6Address = arg1
}

function sub_576032ef(?) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0, 'SafeMath: modulo by zero', 0
    require arg2
    return (arg1 % arg2 < arg3)
}

function addWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor3[address(arg1)] = 1
}

function removeWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor3[address(arg1)] = 0
}

function setClaimStart(bool arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    Mask(88, 0, stor1.field_168) = Mask(88, 0, arg1)
}

function sub_d1bedfb7(?) payable {
    require calldata.size - 4 >= 160
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    sub_a6dbdebf[arg1].field_0 = arg2
    sub_a6dbdebf[arg1].field_256 = arg3
    sub_a6dbdebf[arg1].field_512 = arg4
    sub_a6dbdebf[arg1].field_768 = arg5
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

function sub_b07d0269(?) payable {
    require calldata.size - 4 >= 64
    if arg1 == 1:
        return (-(arg2 % 4999) + 4999)
    if arg1 == 2:
        return (-(arg2 % 3000) + 7999)
    if arg1 == 3:
        return (-(arg2 % 1000) + 8999)
    if arg1 == 4:
        return (-(arg2 % 800) + 9799)
    if arg1 != 5:
        return (-(arg2 % 20) + 9999)
    return (-(arg2 % 80) + 9979)
}

function getStakeInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_8285f8a5Address)
    staticcall sub_8285f8a5Address.0xfc5ac096 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    return ext_call.return_data[160]
}

function getNFTType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not _qualityBase:
        if arg1 >= 0:
            return 2
    else:
        require _qualityBase
        if 640 * _qualityBase / _qualityBase != 640:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg1 >= 640 * _qualityBase / 1000:
            return 2
    return 1
}

function sub_486817ba(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_0c74ab4c.length - 1:
        mem[0] = 17
        if arg1 <= sub_0c74ab4c[idx].field_0:
            idx = idx + 1
            continue 
        require idx + 1 < sub_0c74ab4c.length
        mem[0] = 17
        if arg1 > sub_0c74ab4c[idx].field_256:
            idx = idx + 1
            continue 
        return idx
    return (sub_0c74ab4c.length - 2)
}

function setWhitelist(address[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        idx = idx + 1
        continue 
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        mem[ceil32(arg4.length) + 128] = 0
    else:
        mem[ceil32(arg4.length) + 128] = arg1
        mem[ceil32(arg4.length) + 160] = arg2
        mem[ceil32(arg4.length) + 192] = arg3
        mem[ceil32(arg4.length) + 224] = 128
        mem[ceil32(arg4.length) + 256] = arg4.length
        emit NFTReceived(address rg1, address rg2, uint256 rg3, bytes rg4):
                         Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                         mem[arg4.length + 160 len (2 * ceil32(arg4.length)) + -arg4.length + 128],
        mem[ceil32(arg4.length) + 128] = 'onERC721Received(address,address'
        mem[ceil32(arg4.length) + 160] = ',uint256,bytes)'
        mem[ceil32(arg4.length) + 128] = Mask(32, 224, sha3(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length) + 15]))
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function sub_301b6a4f(?) payable {
    require calldata.size - 4 >= 64
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg2:
        revert with 0, 'less balance'
    mem[ceil32(return_data.size) + 96] = 25
    mem[ceil32(return_data.size) + 128] = 'transfer(address,uint256)'
    mem[ceil32(return_data.size) + 260 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, Mask(224, 0, stor1.field_0), uint32(stor1.field_0), arg2, mem[ceil32(return_data.size) + 260 len 28]
    call arg1.mem[ceil32(return_data.size) + 260 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 264 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: TRANSFER_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: TRANSFER_FAILED'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: TRANSFER_FAILED'
}

function sub_5b1ff283(?) payable {
    require calldata.size - 4 >= 32
    if not _qualityBase:
        if arg1 <= 0:
            return 1
    else:
        require _qualityBase
        if 400 * _qualityBase / _qualityBase != 400:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg1 <= 400 * _qualityBase / 1000:
            return 1
    if not _qualityBase:
        if 0 <= arg1:
            if not _qualityBase:
                if arg1 < 0:
                    return 2
            else:
                require _qualityBase
                if 650 * _qualityBase / _qualityBase != 650:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < 650 * _qualityBase / 1000:
                    return 2
    else:
        require _qualityBase
        if 400 * _qualityBase / _qualityBase != 400:
            revert with 0, 'SafeMath: multiplication overflow'
        if 400 * _qualityBase / 1000 <= arg1:
            if not _qualityBase:
                if arg1 < 0:
                    return 2
            else:
                require _qualityBase
                if 650 * _qualityBase / _qualityBase != 650:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < 650 * _qualityBase / 1000:
                    return 2
    if not _qualityBase:
        if 0 > arg1:
            return 4
    else:
        require _qualityBase
        if 650 * _qualityBase / _qualityBase != 650:
            revert with 0, 'SafeMath: multiplication overflow'
        if 650 * _qualityBase / 1000 > arg1:
            return 4
    if not _qualityBase:
        if arg1 >= 0:
            return 4
    else:
        require _qualityBase
        if 850 * _qualityBase / _qualityBase != 850:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 >= 850 * _qualityBase / 1000:
            return 4
    return 3
}

function sub_9d6d20ce(?) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    mem[100] = this.address
    require ext_code.size(_tokenAddress)
    staticcall _tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    if ext_code.hash(_tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(_tokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, mem[ceil32(return_data.size) + 228 len 28]
    call _tokenAddress.mem[ceil32(return_data.size) + 228 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 260]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(_tokenAddress)
    staticcall _tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor15 < stor15:
        revert with 0, 'SafeMath: addition overflow'
}

function sub_da7bab8a(?) payable {
    require calldata.size - 4 >= 256
    if uint8(stor1.field_0):
        revert with 0, 'initialize: Already initialized!'
    _governanceAddress = msg.sender
    sub_b6e3f8b3[1] = 10^16
    sub_b6e3f8b3[2] = 2 * 10^16
    sub_b6e3f8b3[3] = 3 * 10^16
    sub_b6e3f8b3[4] = 4 * 10^16
    sub_b6e3f8b3[5] = 5 * 10^16
    sub_b6e3f8b3[6] = 10^18
    sub_dd60d916[1] = 10^18
    sub_dd60d916[2] = 2 * 10^18
    sub_dd60d916[3] = 3 * 10^18
    sub_dd60d916[4] = 4 * 10^18
    sub_dd60d916[5] = 5 * 10^18
    sub_dd60d916[6] = 100 * 10^18
    _qualityBase = 10000
    _tokenAddress = arg5
    sub_5705a763 = arg6
    mem[100] = this.address
    require ext_code.size(_tokenAddress)
    staticcall _tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg7 + arg8 < arg7:
        revert with 0, 'SafeMath: addition overflow'
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    if ext_code.hash(_tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(_tokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg7 + arg8, mem[ceil32(return_data.size) + 228 len 28]
    call _tokenAddress.mem[ceil32(return_data.size) + 228 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 260]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(_tokenAddress)
    staticcall _tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_4bce76b6 = arg7
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sub_4bce76b6 > 0:
        revert with 0, 'SafeMath: subtraction overflow', 0
    stor15 = -sub_4bce76b6
    sub_8285f8a5Address = arg1
    sub_83f8a084Address = arg3
    sub_5a0c7efb = arg2
    sub_533318e6Address = arg4
    stor0 = 1
    uint8(stor1.field_0) = 1
}

function getGrade(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not _qualityBase:
        if arg1 < 0:
            return 1
    else:
        require _qualityBase
        if 218 * _qualityBase / _qualityBase != 218:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg1 < 218 * _qualityBase / 1000:
            return 1
    if not _qualityBase:
        if 0 <= arg1:
            if not _qualityBase:
                if arg1 < 0:
                    return 2
            else:
                require _qualityBase
                if 687 * _qualityBase / _qualityBase != 687:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < 687 * _qualityBase / 1000:
                    return 2
    else:
        require _qualityBase
        if 218 * _qualityBase / _qualityBase != 218:
            revert with 0, 'SafeMath: multiplication overflow'
        if 218 * _qualityBase / 1000 <= arg1:
            if not _qualityBase:
                if arg1 < 0:
                    return 2
            else:
                require _qualityBase
                if 687 * _qualityBase / _qualityBase != 687:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < 687 * _qualityBase / 1000:
                    return 2
    if not _qualityBase:
        if 0 <= arg1:
            if not _qualityBase:
                if arg1 < 0:
                    return 3
            else:
                require _qualityBase
                if 843 * _qualityBase / _qualityBase != 843:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < 843 * _qualityBase / 1000:
                    return 3
    else:
        require _qualityBase
        if 687 * _qualityBase / _qualityBase != 687:
            revert with 0, 'SafeMath: multiplication overflow'
        if 687 * _qualityBase / 1000 <= arg1:
            if not _qualityBase:
                if arg1 < 0:
                    return 3
            else:
                require _qualityBase
                if 843 * _qualityBase / _qualityBase != 843:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < 843 * _qualityBase / 1000:
                    return 3
    if not _qualityBase:
        if 0 <= arg1:
            if not _qualityBase:
                if arg1 < 0:
                    return 4
            else:
                require _qualityBase
                if 968 * _qualityBase / _qualityBase != 968:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < 968 * _qualityBase / 1000:
                    return 4
    else:
        require _qualityBase
        if 843 * _qualityBase / _qualityBase != 843:
            revert with 0, 'SafeMath: multiplication overflow'
        if 843 * _qualityBase / 1000 <= arg1:
            if not _qualityBase:
                if arg1 < 0:
                    return 4
            else:
                require _qualityBase
                if 968 * _qualityBase / _qualityBase != 968:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < 968 * _qualityBase / 1000:
                    return 4
    if not _qualityBase:
        if 0 > arg1:
            return 6
    else:
        require _qualityBase
        if 968 * _qualityBase / _qualityBase != 968:
            revert with 0, 'SafeMath: multiplication overflow'
        if 968 * _qualityBase / 1000 > arg1:
            return 6
    if not _qualityBase:
        if arg1 >= 0:
            return 6
    else:
        require _qualityBase
        if 996 * _qualityBase / _qualityBase != 996:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 >= 996 * _qualityBase / 1000:
            return 6
    return 5
}

function sub_28d3aa71(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length != 5:
        revert with 0, 'cocosNFT not enough'
    if block.timestamp <= sub_5705a763:
        revert with 0, 'mergeFiveBlessing not start'
    mem[0] = 5
    mem[32] = 12
    if sub_6fdfa882[5] <= 0:
        revert with 0, 'something is error'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        require ext_code.size(sub_8285f8a5Address)
        staticcall sub_8285f8a5Address.0xfc5ac096 with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _207 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 352
        _224 = mem[_207 + 160]
        mem[0] = idx + 1
        mem[32] = 11
        if sub_a6dbdebf[idx + 1].field_0 != _224:
            revert with 0, 'rule id error'
        require idx < mem[96]
        _278 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _278
        require ext_code.size(sub_83f8a084Address)
        call sub_83f8a084Address.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _278
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = _224
        continue 
    mem[0] = 5
    mem[32] = 12
    _197 = mem[64]
    mem[64] = mem[64] + 64
    mem[_197] = 26
    mem[_197 + 32] = 'SafeMath: division by zero'
    if sub_6fdfa882[5] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require sub_6fdfa882[5]
    _202 = mem[64]
    mem[64] = mem[64] + 64
    mem[_202] = 25
    mem[_202 + 32] = 'transfer(address,uint256)'
    _205 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = sub_4bce76b6 / sub_6fdfa882[5]
    _212 = mem[64]
    mem[mem[64]] = 68
    mem[64] = mem[64] + 100
    mem[_212 + 32 len 4] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
    _217 = mem[_212]
    mem[_205 + 100 len ceil32(mem[_212])] = mem[_212 + 32 len ceil32(mem[_212])]
    if ceil32(_217) <= _217:
        call _tokenAddress with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _205 + _217 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: TRANSFER_FAILED'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 'SafeERC20: TRANSFER_FAILED'
        else:
            _285 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_285 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[_285 + 32]:
                    revert with 0, 'SafeERC20: TRANSFER_FAILED'
    else:
        mem[_205 + _217 + 100] = 0
        call _tokenAddress with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _205 + _217 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: TRANSFER_FAILED'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 'SafeERC20: TRANSFER_FAILED'
        else:
            _287 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_287 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[_287 + 32]:
                    revert with 0, 'SafeERC20: TRANSFER_FAILED'
    return (sub_4bce76b6 / sub_6fdfa882[5])
}

function sub_8daa8e0d(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    require ('cd', 4).length - 1 == ('cd', 36).length
    require ('cd', 4).length - 2 >= 0
    sub_0c74ab4c.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_0c74ab4c.length > idx:
            sub_0c74ab4c[idx].field_0 = 0
            idx = idx + 1
            continue 
        sub_f52b2ac3.length = ('cd', 36).length
        mem[0] = 18
        if not ('cd', 36).length:
            idx = 0
            while sub_f52b2ac3.length > idx:
                sub_f52b2ac3[idx] = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_f52b2ac3.length:
                require idx < sub_0c74ab4c.length
                require idx + 1 < sub_0c74ab4c.length
                mem[0] = 17
                _420 = mem[64]
                mem[64] = mem[64] + 64
                mem[_420] = 30
                mem[_420 + 32] = 'SafeMath: subtraction overflow'
                if sub_0c74ab4c[idx].field_0 > sub_0c74ab4c[idx].field_256:
                    _421 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_421 + idx + 68] = mem[_420 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_421 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _421 + -mem[64] + 100
                _424 = mem[64]
                mem[64] = mem[64] + 160
                require idx < sub_0c74ab4c.length
                mem[0] = 17
                mem[_424] = sub_0c74ab4c[idx].field_0
                require idx + 1 < sub_0c74ab4c.length
                mem[_424 + 32] = sub_0c74ab4c[idx].field_256
                mem[_424 + 64] = sub_0c74ab4c[idx].field_256 - sub_0c74ab4c[idx].field_0
                require idx < sub_f52b2ac3.length
                mem[_424 + 96] = sub_f52b2ac3[idx]
                mem[_424 + 128] = 0
                mem[0] = idx
                mem[32] = 19
                sub_2dabed79[idx].field_0 = sub_0c74ab4c[idx].field_0
                sub_2dabed79[idx].field_256 = sub_0c74ab4c[idx].field_256
                sub_2dabed79[idx].field_512 = sub_0c74ab4c[idx].field_256 - sub_0c74ab4c[idx].field_0
                sub_2dabed79[idx].field_768 = sub_f52b2ac3[idx]
                sub_2dabed79[idx].field_1024 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * ('cd', 4).length) + 160
            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > idx:
                sub_f52b2ac3[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
            while sub_f52b2ac3.length > idx:
                sub_f52b2ac3[idx] = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_f52b2ac3.length:
                require idx < sub_0c74ab4c.length
                require idx + 1 < sub_0c74ab4c.length
                mem[0] = 17
                _495 = mem[64]
                mem[64] = mem[64] + 64
                mem[_495] = 30
                mem[_495 + 32] = 'SafeMath: subtraction overflow'
                if sub_0c74ab4c[idx].field_0 > sub_0c74ab4c[idx].field_256:
                    _497 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_497 + idx + 68] = mem[_495 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_497 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _497 + -mem[64] + 100
                _502 = mem[64]
                mem[64] = mem[64] + 160
                require idx < sub_0c74ab4c.length
                mem[0] = 17
                mem[_502] = sub_0c74ab4c[idx].field_0
                require idx + 1 < sub_0c74ab4c.length
                mem[_502 + 32] = sub_0c74ab4c[idx].field_256
                mem[_502 + 64] = sub_0c74ab4c[idx].field_256 - sub_0c74ab4c[idx].field_0
                require idx < sub_f52b2ac3.length
                mem[_502 + 96] = sub_f52b2ac3[idx]
                mem[_502 + 128] = 0
                mem[0] = idx
                mem[32] = 19
                sub_2dabed79[idx].field_0 = sub_0c74ab4c[idx].field_0
                sub_2dabed79[idx].field_256 = sub_0c74ab4c[idx].field_256
                sub_2dabed79[idx].field_512 = sub_0c74ab4c[idx].field_256 - sub_0c74ab4c[idx].field_0
                sub_2dabed79[idx].field_768 = sub_f52b2ac3[idx]
                sub_2dabed79[idx].field_1024 = 0
                idx = idx + 1
                continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_0c74ab4c[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_0c74ab4c.length > idx:
            sub_0c74ab4c[idx].field_0 = 0
            idx = idx + 1
            continue 
        sub_f52b2ac3.length = ('cd', 36).length
        mem[0] = 18
        if not ('cd', 36).length:
            idx = 0
            while sub_f52b2ac3.length > idx:
                sub_f52b2ac3[idx] = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_f52b2ac3.length:
                require idx < sub_0c74ab4c.length
                require idx + 1 < sub_0c74ab4c.length
                mem[0] = 17
                _496 = mem[64]
                mem[64] = mem[64] + 64
                mem[_496] = 30
                mem[_496 + 32] = 'SafeMath: subtraction overflow'
                if sub_0c74ab4c[idx].field_0 > sub_0c74ab4c[idx].field_256:
                    _498 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_498 + idx + 68] = mem[_496 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_498 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _498 + -mem[64] + 100
                _503 = mem[64]
                mem[64] = mem[64] + 160
                require idx < sub_0c74ab4c.length
                mem[0] = 17
                mem[_503] = sub_0c74ab4c[idx].field_0
                require idx + 1 < sub_0c74ab4c.length
                mem[_503 + 32] = sub_0c74ab4c[idx].field_256
                mem[_503 + 64] = sub_0c74ab4c[idx].field_256 - sub_0c74ab4c[idx].field_0
                require idx < sub_f52b2ac3.length
                mem[_503 + 96] = sub_f52b2ac3[idx]
                mem[_503 + 128] = 0
                mem[0] = idx
                mem[32] = 19
                sub_2dabed79[idx].field_0 = sub_0c74ab4c[idx].field_0
                sub_2dabed79[idx].field_256 = sub_0c74ab4c[idx].field_256
                sub_2dabed79[idx].field_512 = sub_0c74ab4c[idx].field_256 - sub_0c74ab4c[idx].field_0
                sub_2dabed79[idx].field_768 = sub_f52b2ac3[idx]
                sub_2dabed79[idx].field_1024 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * ('cd', 4).length) + 160
            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > idx:
                sub_f52b2ac3[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
            while sub_f52b2ac3.length > idx:
                sub_f52b2ac3[idx] = 0
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_f52b2ac3.length:
                require idx < sub_0c74ab4c.length
                require idx + 1 < sub_0c74ab4c.length
                mem[0] = 17
                _551 = mem[64]
                mem[64] = mem[64] + 64
                mem[_551] = 30
                mem[_551 + 32] = 'SafeMath: subtraction overflow'
                if sub_0c74ab4c[idx].field_0 > sub_0c74ab4c[idx].field_256:
                    _552 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_552 + idx + 68] = mem[_551 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_552 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _552 + -mem[64] + 100
                _557 = mem[64]
                mem[64] = mem[64] + 160
                require idx < sub_0c74ab4c.length
                mem[0] = 17
                mem[_557] = sub_0c74ab4c[idx].field_0
                require idx + 1 < sub_0c74ab4c.length
                mem[_557 + 32] = sub_0c74ab4c[idx].field_256
                mem[_557 + 64] = sub_0c74ab4c[idx].field_256 - sub_0c74ab4c[idx].field_0
                require idx < sub_f52b2ac3.length
                mem[_557 + 96] = sub_f52b2ac3[idx]
                mem[_557 + 128] = 0
                mem[0] = idx
                mem[32] = 19
                sub_2dabed79[idx].field_0 = sub_0c74ab4c[idx].field_0
                sub_2dabed79[idx].field_256 = sub_0c74ab4c[idx].field_256
                sub_2dabed79[idx].field_512 = sub_0c74ab4c[idx].field_256 - sub_0c74ab4c[idx].field_0
                sub_2dabed79[idx].field_768 = sub_f52b2ac3[idx]
                sub_2dabed79[idx].field_1024 = 0
                idx = idx + 1
                continue 
}



}
