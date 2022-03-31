contract main {




// =====================  Runtime code  =====================


#
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
address sub_dd02e178Address;
address sub_263ce714Address;
address sub_a025960eAddress;
uint256 _maxGrade;
uint256 _maxGradeLong;
array of address sub_6f0b7bb9;
mapping of struct sub_4a13f4c8;
mapping of uint256 sub_fc35d757;
uint256 _gegoId;

function _governance() payable {
    return _governanceAddress
}

function sub_263ce714(?) payable {
    return sub_263ce714Address
}

function sub_4a13f4c8(?) payable {
    require calldata.size - 4 >= 32
    return sub_4a13f4c8[arg1].field_0, 
           sub_4a13f4c8[arg1].field_256,
           sub_4a13f4c8[arg1].field_512,
           sub_4a13f4c8[arg1].field_768,
           sub_4a13f4c8[arg1].field_1024,
           sub_4a13f4c8[arg1].field_1280,
           sub_4a13f4c8[arg1].field_1536,
           sub_4a13f4c8[arg1].field_1792,
           sub_4a13f4c8[arg1].field_2048,
           sub_4a13f4c8[arg1].field_2304
}

function sub_6f0b7bb9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6f0b7bb9.length
    return sub_6f0b7bb9[arg1]
}

function _gegoId() payable {
    return _gegoId
}

function sub_a025960e(?) payable {
    return sub_a025960eAddress
}

function _isClaimStart() payable {
    return bool(uint8(stor1.field_168))
}

function _claimMembers(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function _whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function sub_dd02e178(?) payable {
    return sub_dd02e178Address
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

function sub_fc35d757(?) payable {
    require calldata.size - 4 >= 32
    return sub_fc35d757[arg1]
}

function _fallback() payable {
    revert
}

function sub_b0c56c02(?) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    sub_a025960eAddress = arg1
}

function setCurrentGegoId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _gegoId = arg1
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

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not arg1:
        revert with 0, 'new governance the zero address'
    _governanceAddress = arg1
    emit GovernanceTransferred(_governanceAddress, arg1);
}

function sub_e4a74aa8(?) payable {
    require calldata.size - 4 >= 160
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if sub_4a13f4c8[address(arg1)].field_0:
        sub_4a13f4c8[address(arg1)].field_0 = arg1
        sub_4a13f4c8[address(arg1)].field_256 = arg2
        sub_4a13f4c8[address(arg1)].field_512 = arg3
        sub_4a13f4c8[address(arg1)].field_1536 = arg4
        sub_4a13f4c8[address(arg1)].field_1792 = arg5
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

function initialize(address arg1, uint256 arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if uint8(stor1.field_0):
        revert with 0, 'initialize: Already initialized!'
    _governanceAddress = msg.sender
    sub_fc35d757[1] = 2
    sub_fc35d757[2] = 5
    sub_fc35d757[3] = 10
    sub_fc35d757[4] = 15
    sub_fc35d757[5] = 50
    sub_fc35d757[6] = 100
    _qualityBase = 10000
    _maxGrade = 6
    _maxGradeLong = 20
    sub_dd02e178Address = arg1
    sub_263ce714Address = arg3
    _gegoId = arg2
    sub_a025960eAddress = arg4
    stor0 = 1
    uint8(stor1.field_0) = 1
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
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1.field_0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), arg2, mem[ceil32(return_data.size) + 196 len 28]
    call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_6c9b0137(?) payable {
    require calldata.size - 4 >= 224
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not sub_4a13f4c8[address(arg1)].field_0:
        sub_6f0b7bb9.length++
        sub_6f0b7bb9[sub_6f0b7bb9.length] = arg1
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 548 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, mem[ceil32(return_data.size) + 548 len 28]
        call arg1.mem[ceil32(return_data.size) + 548 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 552 len 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if arg1 > 0:
                require arg1 >= 32
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 580 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 580]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        sub_4a13f4c8[address(arg1)].field_0 = uint64(arg1) << 96
        sub_4a13f4c8[address(arg1)].field_256 = 0
        sub_4a13f4c8[address(arg1)].field_512 = arg3
        sub_4a13f4c8[address(arg1)].field_768 = 0
        sub_4a13f4c8[address(arg1)].field_1024 = 10
        sub_4a13f4c8[address(arg1)].field_1280 = 0
        sub_4a13f4c8[address(arg1)].field_1536 = arg4
        sub_4a13f4c8[address(arg1)].field_1792 = arg5
        sub_4a13f4c8[address(arg1)].field_2048 = arg6
        sub_4a13f4c8[address(arg1)].field_2304 = arg7
}

function sub_b890ed26(?) payable {
    require calldata.size - 4 >= 64
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if sub_4a13f4c8[address(arg1)].field_0:
        mem[100] = this.address
        require ext_code.size(sub_4a13f4c8[address(arg1)].field_0)
        staticcall sub_4a13f4c8[address(arg1)].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        if ext_code.hash(sub_4a13f4c8[address(arg1)].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(sub_4a13f4c8[address(arg1)].field_0):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, mem[ceil32(return_data.size) + 228 len 28]
        call sub_4a13f4c8[address(arg1)].field_0.mem[ceil32(return_data.size) + 228 len 4] with:
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
        require ext_code.size(sub_4a13f4c8[address(arg1)].field_0)
        staticcall sub_4a13f4c8[address(arg1)].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if sub_4a13f4c8[address(arg1)].field_256 < sub_4a13f4c8[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        idx = 0
        s = 0
        while idx < sub_6f0b7bb9.length:
            mem[0] = 10
            if sub_6f0b7bb9[idx] != arg1:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
        if not s:
            sub_6f0b7bb9.length++
            sub_6f0b7bb9[sub_6f0b7bb9.length] = arg1
        emit 0x602d3a01: address(arg1), 0
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
