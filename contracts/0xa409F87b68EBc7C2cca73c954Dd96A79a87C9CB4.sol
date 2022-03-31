contract main {




// =====================  Runtime code  =====================


#
#  - getReward(uint256 arg1)
#  - withdraw(uint256 arg1)
#  - sub_ca0978d3(?)
#  - seize(address arg1, uint256 arg2)
#
uint256 stor0;
uint8 stor1;
address _governanceAddress; offset 8
uint256 stor1; offset 8
uint8 stor2; offset 160
address sub_d6395f95Address;
uint256 sub_c52446ad;
uint256 sub_e36eb4af;
uint8 stor5;
uint256 sub_5af92964;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of struct sub_79300d9c;
uint256 sub_7f9d3292;

function _governance() payable {
    return _governanceAddress
}

function sub_4a9051e5(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function sub_5af92964(?) payable {
    return sub_5af92964
}

function sub_7356223c(?) payable {
    return bool(stor5)
}

function sub_79300d9c(?) payable {
    require calldata.size - 4 >= 32
    return sub_79300d9c[arg1].field_0, sub_79300d9c[arg1].field_256, sub_79300d9c[arg1].field_512
}

function sub_7f9d3292(?) payable {
    return sub_7f9d3292
}

function sub_83d25a24(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function sub_c52446ad(?) payable {
    return sub_c52446ad
}

function sub_d6395f95(?) payable {
    return sub_d6395f95Address
}

function sub_e36eb4af(?) payable {
    return sub_e36eb4af
}

function _hasStart() payable {
    return bool(stor2)
}

function _fallback() payable {
    revert
}

function sub_6ef959a4(?) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    sub_7f9d3292 = arg1
    emit 0x6b52c5a1: arg1
}

function sub_41e5aff2(?) payable {
    require calldata.size - 4 >= 64
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor7[arg1] = uint8(arg2)
    emit 0x259874ca: arg1, arg2
}

function sub_5df4630b(?) payable {
    require calldata.size - 4 >= 64
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor8[arg1] = uint8(arg2)
    emit 0x42c8a84b: arg1, arg2
}

function sub_c9798736(?) payable {
    require calldata.size - 4 >= 128
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    sub_79300d9c[arg1].field_0 = arg2
    sub_79300d9c[arg1].field_256 = arg3
    sub_79300d9c[arg1].field_512 = arg4
    emit 0xfa536caa: arg1, address(arg2), arg3
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not arg1:
        revert with 0, 'new governance the zero address'
    emit GovernanceTransferred(_governanceAddress, arg1);
    _governanceAddress = arg1
}

function setStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if stor2:
        revert with 0, 'has started'
    stor2 = 1
    sub_c52446ad = arg1
    if sub_c52446ad + (48 * 24 * 3600) < sub_c52446ad:
        revert with 0, 'SafeMath: addition overflow'
    sub_e36eb4af = sub_c52446ad + (48 * 24 * 3600)
    emit 0xa33e2b80: arg1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor1.field_0):
        revert with 0, 'initialize: Already initialized!'
    Mask(248, 0, stor1.field_8) = Mask(248, 0, tx.origin)
    stor5 = 0
    sub_c52446ad = block.timestamp + (8760 * 24 * 3600)
    sub_e36eb4af = block.timestamp + (8760 * 24 * 3600)
    sub_7f9d3292 = 100000
    sub_d6395f95Address = arg1
    stor2 = 0
    stor0 = 1
    uint8(stor1.field_0) = 1
}

function earned(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_d6395f95Address)
    if block.timestamp < sub_5af92964:
        staticcall sub_d6395f95Address.0x76ae5299 with:
                gas gas_remaining wei
               args arg1, address(arg2), block.timestamp
    else:
        staticcall sub_d6395f95Address.0x76ae5299 with:
                gas gas_remaining wei
               args arg1, address(arg2), sub_5af92964
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if not stor2:
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

function sub_d80a5812(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xe5c0c004abf5585dcacf95893c5866cf59f59b9c)
    staticcall 0xe5c0c004abf5585dcacf95893c5866cf59f59b9c.getGego(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    if not ext_call.return_data[64]:
        revert with 0, 'the gego not token'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'the gego not token'
    if ext_call.return_data[0] >= 7:
        revert with 0, 'the gego not token'
    if ext_call.return_data[0] == 1:
        if not ext_call.return_data[32]:
            if 110000 * sub_7f9d3292 / 110000 != sub_7f9d3292:
                revert with 0, 'SafeMath: multiplication overflow'
            return 110000 * sub_7f9d3292 / 100000, ext_call.return_data[64], ext_call.return_data[160], ext_call.return_data[192]
        if 10000 * ext_call.return_data[32] / ext_call.return_data[32] != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if (10000 * ext_call.return_data[32] / 5000) + 110000 < 10000 * ext_call.return_data[32] / 5000:
            revert with 0, 'SafeMath: addition overflow'
        if not (10000 * ext_call.return_data[32] / 5000) + 110000:
            return 0, ext_call.return_data[64], ext_call.return_data[160], ext_call.return_data[192]
        if (110000 * sub_7f9d3292) + (10000 * ext_call.return_data[32] / 5000 * sub_7f9d3292) / (10000 * ext_call.return_data[32] / 5000) + 110000 != sub_7f9d3292:
            revert with 0, 'SafeMath: multiplication overflow'
        return (110000 * sub_7f9d3292) + (10000 * ext_call.return_data[32] / 5000 * sub_7f9d3292) / 100000, 
               ext_call.return_data[64],
               ext_call.return_data[160],
               ext_call.return_data[192]
    if 2 == ext_call.return_data[0]:
        if 5000 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not ext_call.return_data[32] - 5000:
            if 120000 * sub_7f9d3292 / 120000 != sub_7f9d3292:
                revert with 0, 'SafeMath: multiplication overflow'
            return 120000 * sub_7f9d3292 / 100000, ext_call.return_data[64], ext_call.return_data[160], ext_call.return_data[192]
        if (10000 * ext_call.return_data[32]) - 50 * 10^6 / ext_call.return_data[32] - 5000 != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) + 120000 < (10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000:
            revert with 0, 'SafeMath: addition overflow'
        if not ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) + 120000:
            return 0, ext_call.return_data[64], ext_call.return_data[160], ext_call.return_data[192]
        if (120000 * sub_7f9d3292) + ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000 * sub_7f9d3292) / ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000) + 120000 != sub_7f9d3292:
            revert with 0, 'SafeMath: multiplication overflow'
        return (120000 * sub_7f9d3292) + ((10000 * ext_call.return_data[32]) - 50 * 10^6 / 3000 * sub_7f9d3292) / 100000, 
               ext_call.return_data[64],
               ext_call.return_data[160],
               ext_call.return_data[192]
    if 3 == ext_call.return_data[0]:
        if 8000 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not ext_call.return_data[32] - 8000:
            if 130000 * sub_7f9d3292 / 130000 != sub_7f9d3292:
                revert with 0, 'SafeMath: multiplication overflow'
            return 130000 * sub_7f9d3292 / 100000, ext_call.return_data[64], ext_call.return_data[160], ext_call.return_data[192]
        if (10000 * ext_call.return_data[32]) - 80 * 10^6 / ext_call.return_data[32] - 8000 != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) + 130000 < (10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000:
            revert with 0, 'SafeMath: addition overflow'
        if not ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) + 130000:
            return 0, ext_call.return_data[64], ext_call.return_data[160], ext_call.return_data[192]
        if (130000 * sub_7f9d3292) + ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000 * sub_7f9d3292) / ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000) + 130000 != sub_7f9d3292:
            revert with 0, 'SafeMath: multiplication overflow'
        return (130000 * sub_7f9d3292) + ((10000 * ext_call.return_data[32]) - 80 * 10^6 / 1000 * sub_7f9d3292) / 100000, 
               ext_call.return_data[64],
               ext_call.return_data[160],
               ext_call.return_data[192]
    if 4 == ext_call.return_data[0]:
        if 9000 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not ext_call.return_data[32] - 9000:
            if 140000 * sub_7f9d3292 / 140000 != sub_7f9d3292:
                revert with 0, 'SafeMath: multiplication overflow'
            return 140000 * sub_7f9d3292 / 100000, ext_call.return_data[64], ext_call.return_data[160], ext_call.return_data[192]
        if (20000 * ext_call.return_data[32]) - (50000 * 3600) / ext_call.return_data[32] - 9000 != 20000:
            revert with 0, 'SafeMath: multiplication overflow'
        if ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) + 140000 < (20000 * ext_call.return_data[32]) - (50000 * 3600) / 800:
            revert with 0, 'SafeMath: addition overflow'
        if not ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) + 140000:
            return 0, ext_call.return_data[64], ext_call.return_data[160], ext_call.return_data[192]
        if (140000 * sub_7f9d3292) + ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800 * sub_7f9d3292) / ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800) + 140000 != sub_7f9d3292:
            revert with 0, 'SafeMath: multiplication overflow'
        return (140000 * sub_7f9d3292) + ((20000 * ext_call.return_data[32]) - (50000 * 3600) / 800 * sub_7f9d3292) / 100000, 
               ext_call.return_data[64],
               ext_call.return_data[160],
               ext_call.return_data[192]
    if ext_call.return_data[0] != 5:
        if 9980 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not ext_call.return_data[32] - 9980:
            if 50 * 3600 * sub_7f9d3292 / 50 * 3600 != sub_7f9d3292:
                revert with 0, 'SafeMath: multiplication overflow'
            return 50 * 3600 * sub_7f9d3292 / 100000, ext_call.return_data[64], ext_call.return_data[160], ext_call.return_data[192]
        if (20000 * ext_call.return_data[32]) - 199600000 / ext_call.return_data[32] - 9980 != 20000:
            revert with 0, 'SafeMath: multiplication overflow'
        if ((20000 * ext_call.return_data[32]) - 199600000 / 20) + (50 * 3600) < (20000 * ext_call.return_data[32]) - 199600000 / 20:
            revert with 0, 'SafeMath: addition overflow'
        if not ((20000 * ext_call.return_data[32]) - 199600000 / 20) + (50 * 3600):
            return 0, ext_call.return_data[64], ext_call.return_data[160], ext_call.return_data[192]
        if (50 * 3600 * sub_7f9d3292) + ((20000 * ext_call.return_data[32]) - 199600000 / 20 * sub_7f9d3292) / ((20000 * ext_call.return_data[32]) - 199600000 / 20) + (50 * 3600) != sub_7f9d3292:
            revert with 0, 'SafeMath: multiplication overflow'
        return (50 * 3600 * sub_7f9d3292) + ((20000 * ext_call.return_data[32]) - 199600000 / 20 * sub_7f9d3292) / 100000, 
               ext_call.return_data[64],
               ext_call.return_data[160],
               ext_call.return_data[192]
    if 9800 > ext_call.return_data[32]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not ext_call.return_data[32] - 9800:
        if 160000 * sub_7f9d3292 / 160000 != sub_7f9d3292:
            revert with 0, 'SafeMath: multiplication overflow'
        return 160000 * sub_7f9d3292 / 100000, ext_call.return_data[64], ext_call.return_data[160], ext_call.return_data[192]
    if (20000 * ext_call.return_data[32]) - 196 * 10^6 / ext_call.return_data[32] - 9800 != 20000:
        revert with 0, 'SafeMath: multiplication overflow'
    if ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) + 160000 < (20000 * ext_call.return_data[32]) - 196 * 10^6 / 180:
        revert with 0, 'SafeMath: addition overflow'
    if not ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) + 160000:
        return 0, ext_call.return_data[64], ext_call.return_data[160], ext_call.return_data[192]
    if (160000 * sub_7f9d3292) + ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180 * sub_7f9d3292) / ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180) + 160000 != sub_7f9d3292:
        revert with 0, 'SafeMath: multiplication overflow'
    return (160000 * sub_7f9d3292) + ((20000 * ext_call.return_data[32]) - 196 * 10^6 / 180 * sub_7f9d3292) / 100000, 
           ext_call.return_data[64],
           ext_call.return_data[160],
           ext_call.return_data[192]
}

function sub_c51fadaf(?) payable {
    require calldata.size - 4 >= 32
    if not stor7[arg1]:
        revert with 0, 'is not hero'
    require ext_code.size(sub_d6395f95Address)
    staticcall sub_d6395f95Address.0xf6c8d8de with:
            gas gas_remaining wei
           args arg1
    mem[416 len 320] = ext_call.return_data[0 len 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require bool(ceil32(return_data.size) + 736 <= test266151307())
    mem[ceil32(return_data.size) + 448] = ext_call.return_data[44 len 20]
    if block.timestamp < sub_5af92964:
        mem[ceil32(return_data.size) + 772] = block.timestamp
        require ext_code.size(sub_d6395f95Address)
        staticcall sub_d6395f95Address.0xd93412f4 with:
                gas gas_remaining wei
               args arg1, block.timestamp
    else:
        mem[ceil32(return_data.size) + 772] = sub_5af92964
        require ext_code.size(sub_d6395f95Address)
        staticcall sub_d6395f95Address.0xd93412f4 with:
                gas gas_remaining wei
               args arg1, sub_5af92964
    mem[ceil32(return_data.size) + 736] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 736] = 0x134353b000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 740] = arg1
    mem[(2 * ceil32(return_data.size)) + 772] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 804] = mem[ceil32(return_data.size) + 460 len 20]
    mem[(2 * ceil32(return_data.size)) + 836] = ext_call.return_data[64]
    mem[(2 * ceil32(return_data.size)) + 868] = ext_call.return_data[96]
    mem[(2 * ceil32(return_data.size)) + 900] = ext_call.return_data[128]
    mem[(2 * ceil32(return_data.size)) + 932] = ext_call.return_data[160]
    mem[(2 * ceil32(return_data.size)) + 964] = ext_call.return_data[192]
    mem[(2 * ceil32(return_data.size)) + 996] = ext_call.return_data[224]
    if block.timestamp < sub_5af92964:
        mem[(2 * ceil32(return_data.size)) + 1028] = block.timestamp
        mem[(2 * ceil32(return_data.size)) + 1060] = ext_call.return_data[0]
        require ext_code.size(sub_d6395f95Address)
        call sub_d6395f95Address.0x134353b0 with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0], mem[ceil32(return_data.size) + 460 len 20], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], block.timestamp, ext_call.return_data[0]
    else:
        mem[(2 * ceil32(return_data.size)) + 1028] = sub_5af92964
        mem[(2 * ceil32(return_data.size)) + 1060] = ext_call.return_data[0]
        require ext_code.size(sub_d6395f95Address)
        call sub_d6395f95Address.0x134353b0 with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0], mem[ceil32(return_data.size) + 460 len 20], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], sub_5af92964, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        if block.timestamp <= sub_c52446ad:
            revert with 0, 'not start'
        if block.timestamp < sub_e36eb4af:
            if 2 == stor0:
                revert with 0, 'ReentrancyGuard: reentrant call'
            stor0 = 2
            if not arg1:
                revert with 0, 'the gegoId error'
            require ext_code.size(sub_d6395f95Address)
            staticcall sub_d6395f95Address.0xf6c8d8de with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 320
            require bool((4 * ceil32(return_data.size)) + 1376 <= test266151307())
        else:
            if stor5:
                if 2 == stor0:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor0 = 2
                if not arg1:
                    revert with 0, 'the gegoId error'
                require ext_code.size(sub_d6395f95Address)
                staticcall sub_d6395f95Address.0xf6c8d8de with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 320
                require bool((4 * ceil32(return_data.size)) + 1376 <= test266151307())
            else:
                require ext_code.size(sub_d6395f95Address)
                if block.timestamp < sub_5af92964:
                    call sub_d6395f95Address.0xd7f06e90 with:
                         gas gas_remaining wei
                        args block.timestamp, 720 * 24 * 3600, 75000 * 10^18
                else:
                    call sub_d6395f95Address.0xd7f06e90 with:
                         gas gas_remaining wei
                        args sub_5af92964, 720 * 24 * 3600, 75000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                stor5 = 1
                emit 0xfeebeead: 75000 * 10^18
                if 2 == stor0:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor0 = 2
                if not arg1:
                    revert with 0, 'the gegoId error'
                require ext_code.size(sub_d6395f95Address)
                staticcall sub_d6395f95Address.0xf6c8d8de with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 320
                require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
    else:
        require ext_code.size(sub_d6395f95Address)
        if block.timestamp < sub_5af92964:
            staticcall sub_d6395f95Address.0x76ae5299 with:
                    gas gas_remaining wei
                   args arg1, msg.sender, block.timestamp
        else:
            staticcall sub_d6395f95Address.0x76ae5299 with:
                    gas gas_remaining wei
                   args arg1, msg.sender, sub_5af92964
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d6395f95Address)
        call sub_d6395f95Address.0x4b88bf76 with:
             gas gas_remaining wei
            args arg1, msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_d6395f95Address)
        call sub_d6395f95Address.0x221b7ec6 with:
             gas gas_remaining wei
            args arg1, msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.timestamp <= sub_c52446ad:
            revert with 0, 'not start'
        if block.timestamp < sub_e36eb4af:
            if 2 == stor0:
                revert with 0, 'ReentrancyGuard: reentrant call'
            stor0 = 2
            if not arg1:
                revert with 0, 'the gegoId error'
            require ext_code.size(sub_d6395f95Address)
            staticcall sub_d6395f95Address.0xf6c8d8de with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 320
            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
        else:
            if stor5:
                if 2 == stor0:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor0 = 2
                if not arg1:
                    revert with 0, 'the gegoId error'
                require ext_code.size(sub_d6395f95Address)
                staticcall sub_d6395f95Address.0xf6c8d8de with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 320
                require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
            else:
                require ext_code.size(sub_d6395f95Address)
                if block.timestamp < sub_5af92964:
                    call sub_d6395f95Address.0xd7f06e90 with:
                         gas gas_remaining wei
                        args block.timestamp, 720 * 24 * 3600, 75000 * 10^18
                else:
                    call sub_d6395f95Address.0xd7f06e90 with:
                         gas gas_remaining wei
                        args sub_5af92964, 720 * 24 * 3600, 75000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                stor5 = 1
                emit 0xfeebeead: 75000 * 10^18
                if 2 == stor0:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor0 = 2
                if not arg1:
                    revert with 0, 'the gegoId error'
                require ext_code.size(sub_d6395f95Address)
                staticcall sub_d6395f95Address.0xf6c8d8de with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 320
                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
    if 1 == ext_call.return_data[64]:
        revert with 0, 'have in team'
    require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
    call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d6395f95Address)
    if ext_call.return_data[64] != 0:
        if ext_call.return_data[192]:
            call sub_d6395f95Address.0x134353b0 with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[0], msg.sender, 1, ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
        else:
            call sub_d6395f95Address.0x134353b0 with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[0], msg.sender, 1, ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], 1, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
    else:
        call sub_d6395f95Address.0x520bc922 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_d6395f95Address)
        if ext_call.return_data[192]:
            call sub_d6395f95Address.0x134353b0 with:
                 gas gas_remaining wei
                args arg1, arg1, msg.sender, 1, ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
        else:
            call sub_d6395f95Address.0x134353b0 with:
                 gas gas_remaining wei
                args arg1, arg1, msg.sender, 1, ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], 1, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9fb97a6f: msg.sender, arg1, 1
    stor0 = 1
}

function sub_832d1974(?) payable {
    require calldata.size - 4 >= 32
    if not stor7[arg1]:
        revert with 0, 'is not hero'
    require ext_code.size(sub_d6395f95Address)
    staticcall sub_d6395f95Address.0xf6c8d8de with:
            gas gas_remaining wei
           args arg1
    mem[416 len 320] = ext_call.return_data[0 len 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require bool(ceil32(return_data.size) + 736 <= test266151307())
    mem[ceil32(return_data.size) + 448] = ext_call.return_data[44 len 20]
    if block.timestamp < sub_5af92964:
        mem[ceil32(return_data.size) + 772] = block.timestamp
        require ext_code.size(sub_d6395f95Address)
        staticcall sub_d6395f95Address.0xd93412f4 with:
                gas gas_remaining wei
               args arg1, block.timestamp
    else:
        mem[ceil32(return_data.size) + 772] = sub_5af92964
        require ext_code.size(sub_d6395f95Address)
        staticcall sub_d6395f95Address.0xd93412f4 with:
                gas gas_remaining wei
               args arg1, sub_5af92964
    mem[ceil32(return_data.size) + 736] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 736] = 0x134353b000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 740] = arg1
    mem[(2 * ceil32(return_data.size)) + 772] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 804] = mem[ceil32(return_data.size) + 460 len 20]
    mem[(2 * ceil32(return_data.size)) + 836] = ext_call.return_data[64]
    mem[(2 * ceil32(return_data.size)) + 868] = ext_call.return_data[96]
    mem[(2 * ceil32(return_data.size)) + 900] = ext_call.return_data[128]
    mem[(2 * ceil32(return_data.size)) + 932] = ext_call.return_data[160]
    mem[(2 * ceil32(return_data.size)) + 964] = ext_call.return_data[192]
    mem[(2 * ceil32(return_data.size)) + 996] = ext_call.return_data[224]
    if block.timestamp < sub_5af92964:
        mem[(2 * ceil32(return_data.size)) + 1028] = block.timestamp
        mem[(2 * ceil32(return_data.size)) + 1060] = ext_call.return_data[0]
        require ext_code.size(sub_d6395f95Address)
        call sub_d6395f95Address.0x134353b0 with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0], mem[ceil32(return_data.size) + 460 len 20], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], block.timestamp, ext_call.return_data[0]
    else:
        mem[(2 * ceil32(return_data.size)) + 1028] = sub_5af92964
        mem[(2 * ceil32(return_data.size)) + 1060] = ext_call.return_data[0]
        require ext_code.size(sub_d6395f95Address)
        call sub_d6395f95Address.0x134353b0 with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0], mem[ceil32(return_data.size) + 460 len 20], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], sub_5af92964, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        if block.timestamp < sub_e36eb4af:
            if 2 == stor0:
                revert with 0, 'ReentrancyGuard: reentrant call'
            stor0 = 2
            if not arg1:
                revert with 0, 'the gegoId error'
            require ext_code.size(sub_d6395f95Address)
            staticcall sub_d6395f95Address.0xf6c8d8de with:
                    gas gas_remaining wei
                   args arg1
            mem[(2 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 320
            require bool((4 * ceil32(return_data.size)) + 1376 <= test266151307())
            mem[(4 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
            if ext_call.return_data[64] != 1:
                revert with 0, 'not in team'
            if mem[(4 * ceil32(return_data.size)) + 1100 len 20] != msg.sender:
                revert with 0, 'the gego not owner captain'
            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args address(this.address), address(ext_call.return_data[44 len 20]), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_d6395f95Address)
            call sub_d6395f95Address.0x134353b0 with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 1100 len 20], 2, ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
        else:
            if stor5:
                if 2 == stor0:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor0 = 2
                if not arg1:
                    revert with 0, 'the gegoId error'
                require ext_code.size(sub_d6395f95Address)
                staticcall sub_d6395f95Address.0xf6c8d8de with:
                        gas gas_remaining wei
                       args arg1
                mem[(2 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 320
                require bool((4 * ceil32(return_data.size)) + 1376 <= test266151307())
                mem[(4 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                if ext_call.return_data[64] != 1:
                    revert with 0, 'not in team'
                if mem[(4 * ceil32(return_data.size)) + 1100 len 20] != msg.sender:
                    revert with 0, 'the gego not owner captain'
                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(this.address), address(ext_call.return_data[44 len 20]), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_d6395f95Address)
                call sub_d6395f95Address.0x134353b0 with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 1100 len 20], 2, ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
            else:
                require ext_code.size(sub_d6395f95Address)
                if block.timestamp < sub_5af92964:
                    call sub_d6395f95Address.0xd7f06e90 with:
                         gas gas_remaining wei
                        args block.timestamp, 720 * 24 * 3600, 75000 * 10^18
                else:
                    call sub_d6395f95Address.0xd7f06e90 with:
                         gas gas_remaining wei
                        args sub_5af92964, 720 * 24 * 3600, 75000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                stor5 = 1
                emit 0xfeebeead: 75000 * 10^18
                if 2 == stor0:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor0 = 2
                if not arg1:
                    revert with 0, 'the gegoId error'
                require ext_code.size(sub_d6395f95Address)
                staticcall sub_d6395f95Address.0xf6c8d8de with:
                        gas gas_remaining wei
                       args arg1
                mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 320
                require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                if ext_call.return_data[64] != 1:
                    revert with 0, 'not in team'
                if mem[(6 * ceil32(return_data.size)) + 1100 len 20] != msg.sender:
                    revert with 0, 'the gego not owner captain'
                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(this.address), address(ext_call.return_data[44 len 20]), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_d6395f95Address)
                call sub_d6395f95Address.0x134353b0 with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 1100 len 20], 2, ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
    else:
        require ext_code.size(sub_d6395f95Address)
        if block.timestamp < sub_5af92964:
            staticcall sub_d6395f95Address.0x76ae5299 with:
                    gas gas_remaining wei
                   args arg1, msg.sender, block.timestamp
        else:
            staticcall sub_d6395f95Address.0x76ae5299 with:
                    gas gas_remaining wei
                   args arg1, msg.sender, sub_5af92964
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d6395f95Address)
        call sub_d6395f95Address.0x4b88bf76 with:
             gas gas_remaining wei
            args arg1, msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_d6395f95Address)
        call sub_d6395f95Address.0x221b7ec6 with:
             gas gas_remaining wei
            args arg1, msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.timestamp < sub_e36eb4af:
            if 2 == stor0:
                revert with 0, 'ReentrancyGuard: reentrant call'
            stor0 = 2
            if not arg1:
                revert with 0, 'the gegoId error'
            require ext_code.size(sub_d6395f95Address)
            staticcall sub_d6395f95Address.0xf6c8d8de with:
                    gas gas_remaining wei
                   args arg1
            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 320
            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
            if ext_call.return_data[64] != 1:
                revert with 0, 'not in team'
            if mem[(6 * ceil32(return_data.size)) + 1100 len 20] != msg.sender:
                revert with 0, 'the gego not owner captain'
            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args address(this.address), address(ext_call.return_data[44 len 20]), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_d6395f95Address)
            call sub_d6395f95Address.0x134353b0 with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 1100 len 20], 2, ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
        else:
            if stor5:
                if 2 == stor0:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor0 = 2
                if not arg1:
                    revert with 0, 'the gegoId error'
                require ext_code.size(sub_d6395f95Address)
                staticcall sub_d6395f95Address.0xf6c8d8de with:
                        gas gas_remaining wei
                       args arg1
                mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 320
                require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                if ext_call.return_data[64] != 1:
                    revert with 0, 'not in team'
                if mem[(6 * ceil32(return_data.size)) + 1100 len 20] != msg.sender:
                    revert with 0, 'the gego not owner captain'
                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(this.address), address(ext_call.return_data[44 len 20]), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_d6395f95Address)
                call sub_d6395f95Address.0x134353b0 with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 1100 len 20], 2, ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
            else:
                require ext_code.size(sub_d6395f95Address)
                if block.timestamp < sub_5af92964:
                    call sub_d6395f95Address.0xd7f06e90 with:
                         gas gas_remaining wei
                        args block.timestamp, 720 * 24 * 3600, 75000 * 10^18
                else:
                    call sub_d6395f95Address.0xd7f06e90 with:
                         gas gas_remaining wei
                        args sub_5af92964, 720 * 24 * 3600, 75000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                stor5 = 1
                emit 0xfeebeead: 75000 * 10^18
                if 2 == stor0:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor0 = 2
                if not arg1:
                    revert with 0, 'the gegoId error'
                require ext_code.size(sub_d6395f95Address)
                staticcall sub_d6395f95Address.0xf6c8d8de with:
                        gas gas_remaining wei
                       args arg1
                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 320
                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                if ext_call.return_data[64] != 1:
                    revert with 0, 'not in team'
                if mem[(7 * ceil32(return_data.size)) + 1100 len 20] != msg.sender:
                    revert with 0, 'the gego not owner captain'
                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(this.address), address(ext_call.return_data[44 len 20]), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_d6395f95Address)
                call sub_d6395f95Address.0x134353b0 with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], mem[(7 * ceil32(return_data.size)) + 1100 len 20], 2, ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9fb97a6f: msg.sender, arg1, 2
    stor0 = 1
}

function sub_512ac774(?) payable {
    require calldata.size - 4 >= 64
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    require ext_code.size(sub_d6395f95Address)
    staticcall sub_d6395f95Address.0xf6c8d8de with:
            gas gas_remaining wei
           args arg1
    mem[416 len 320] = ext_call.return_data[0 len 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require bool(ceil32(return_data.size) + 736 <= test266151307())
    mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 448] = ext_call.return_data[44 len 20]
    mem[ceil32(return_data.size) + 480] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 512] = ext_call.return_data[96]
    mem[ceil32(return_data.size) + 544] = ext_call.return_data[128]
    mem[ceil32(return_data.size) + 576] = ext_call.return_data[160]
    mem[ceil32(return_data.size) + 608] = ext_call.return_data[192]
    mem[ceil32(return_data.size) + 640] = ext_call.return_data[224]
    mem[ceil32(return_data.size) + 740] = arg1
    if block.timestamp < sub_5af92964:
        mem[ceil32(return_data.size) + 772] = block.timestamp
        require ext_code.size(sub_d6395f95Address)
        staticcall sub_d6395f95Address.0xd93412f4 with:
                gas gas_remaining wei
               args arg1, block.timestamp
        mem[ceil32(return_data.size) + 736] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 704] = ext_call.return_data[0]
        if block.timestamp < sub_5af92964:
            mem[ceil32(return_data.size) + 672] = block.timestamp
            mem[(2 * ceil32(return_data.size)) + 736] = 0x134353b000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 740] = arg1
            mem[(2 * ceil32(return_data.size)) + 772] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 804] = mem[ceil32(return_data.size) + 460 len 20]
            mem[(2 * ceil32(return_data.size)) + 836] = ext_call.return_data[64]
            mem[(2 * ceil32(return_data.size)) + 868] = ext_call.return_data[96]
            mem[(2 * ceil32(return_data.size)) + 900] = ext_call.return_data[128]
            mem[(2 * ceil32(return_data.size)) + 932] = ext_call.return_data[160]
            mem[(2 * ceil32(return_data.size)) + 964] = ext_call.return_data[192]
            mem[(2 * ceil32(return_data.size)) + 996] = ext_call.return_data[224]
            mem[(2 * ceil32(return_data.size)) + 1028] = block.timestamp
            mem[(2 * ceil32(return_data.size)) + 1060] = ext_call.return_data[0]
            require ext_code.size(sub_d6395f95Address)
            call sub_d6395f95Address.0x134353b0 with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[0], mem[ceil32(return_data.size) + 460 len 20], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], block.timestamp, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                if block.timestamp < sub_e36eb4af:
                    if 2 == stor0:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor0 = 2
                    if not arg2:
                        revert with 0, 'the gegoId error'
                    mem[(2 * ceil32(return_data.size)) + 736] = 0
                    mem[(2 * ceil32(return_data.size)) + 768] = 0
                    mem[(2 * ceil32(return_data.size)) + 800] = 0
                    mem[(2 * ceil32(return_data.size)) + 832] = 0
                    mem[(2 * ceil32(return_data.size)) + 864] = 0
                    mem[(2 * ceil32(return_data.size)) + 896] = 0
                    mem[(2 * ceil32(return_data.size)) + 928] = 0
                    mem[(2 * ceil32(return_data.size)) + 960] = 0
                    mem[(2 * ceil32(return_data.size)) + 992] = 0
                    mem[(2 * ceil32(return_data.size)) + 1024] = 0
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0xf6c8d8de with:
                            gas gas_remaining wei
                           args arg1
                    mem[(2 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 320
                    require bool((4 * ceil32(return_data.size)) + 1376 <= test266151307())
                    mem[(4 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                    mem[(4 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                    mem[(4 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                    mem[(4 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                    mem[(4 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                    mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                    mem[(4 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                    mem[(4 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                    mem[(4 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                    if not ext_call.return_data[0]:
                        revert with 0, 'no team'
                    mem[(4 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 1380] = arg1
                    mem[(4 * ceil32(return_data.size)) + 1412] = msg.sender
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x58597f9b with:
                            gas gas_remaining wei
                           args arg1, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 1376
                    require return_data.size >= 32
                    _690 = mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 1376 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                    _719 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                    mem[(6 * ceil32(return_data.size)) + 1376] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                    require _690 + (32 * _719) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 1408 len 32 * _719] = mem[(4 * ceil32(return_data.size)) + _690 + 1408 len 32 * _719]
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = arg2
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x5ef7c13d with:
                            gas gas_remaining wei
                           args arg1, arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2358 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2358] < _719
                    if mem[(6 * ceil32(return_data.size)) + (32 * mem[_2358]) + 1408] != arg2:
                        revert with 0, 'not gegoId owner'
                    require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                    call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg2
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x9d5de6db with:
                         gas gas_remaining wei
                        args arg1, msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x1b6d980d with:
                            gas gas_remaining wei
                           args arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2934 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2979 = mem[_2934]
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x25e3ee25 with:
                            gas gas_remaining wei
                           args arg1, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3126 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3170 = mem[_3126]
                    _3225 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3225] = 30
                    mem[_3225 + 32] = 'SafeMath: subtraction overflow'
                    if _2979 > _3170:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    _3416 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3416] = 30
                    mem[_3416 + 32] = 'SafeMath: subtraction overflow'
                    if _2979 > ext_call.return_data[192]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2979
                    mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 1100 len 20]
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x134353b0 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2979, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x5687967 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, _3170 - _2979
                else:
                    if stor5:
                        if 2 == stor0:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor0 = 2
                        if not arg2:
                            revert with 0, 'the gegoId error'
                        mem[(2 * ceil32(return_data.size)) + 736] = 0
                        mem[(2 * ceil32(return_data.size)) + 768] = 0
                        mem[(2 * ceil32(return_data.size)) + 800] = 0
                        mem[(2 * ceil32(return_data.size)) + 832] = 0
                        mem[(2 * ceil32(return_data.size)) + 864] = 0
                        mem[(2 * ceil32(return_data.size)) + 896] = 0
                        mem[(2 * ceil32(return_data.size)) + 928] = 0
                        mem[(2 * ceil32(return_data.size)) + 960] = 0
                        mem[(2 * ceil32(return_data.size)) + 992] = 0
                        mem[(2 * ceil32(return_data.size)) + 1024] = 0
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0xf6c8d8de with:
                                gas gas_remaining wei
                               args arg1
                        mem[(2 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 320
                        require bool((4 * ceil32(return_data.size)) + 1376 <= test266151307())
                        mem[(4 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                        mem[(4 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                        mem[(4 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                        mem[(4 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                        mem[(4 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                        mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                        mem[(4 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                        mem[(4 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                        mem[(4 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                        if not ext_call.return_data[0]:
                            revert with 0, 'no team'
                        mem[(4 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 1380] = arg1
                        mem[(4 * ceil32(return_data.size)) + 1412] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x58597f9b with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 1376
                        require return_data.size >= 32
                        _699 = mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + return_data.size + 1376 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                        _730 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                        mem[(6 * ceil32(return_data.size)) + 1376] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                        require _699 + (32 * _730) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + 1408 len 32 * _730] = mem[(4 * ceil32(return_data.size)) + _699 + 1408 len 32 * _730]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x5ef7c13d with:
                                gas gas_remaining wei
                               args arg1, arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2359 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2359] < _730
                        if mem[(6 * ceil32(return_data.size)) + (32 * mem[_2359]) + 1408] != arg2:
                            revert with 0, 'not gegoId owner'
                        require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                        call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x9d5de6db with:
                             gas gas_remaining wei
                            args arg1, msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x1b6d980d with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2935 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2980 = mem[_2935]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x25e3ee25 with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3127 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3171 = mem[_3127]
                        _3226 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3226] = 30
                        mem[_3226 + 32] = 'SafeMath: subtraction overflow'
                        if _2980 > _3171:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        _3417 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3417] = 30
                        mem[_3417 + 32] = 'SafeMath: subtraction overflow'
                        if _2980 > ext_call.return_data[192]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2980
                        mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 1100 len 20]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x134353b0 with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2980, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x5687967 with:
                             gas gas_remaining wei
                            args arg1, msg.sender, _3171 - _2980
                    else:
                        if block.timestamp < sub_5af92964:
                            mem[(2 * ceil32(return_data.size)) + 740] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                            mem[(2 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0xd7f06e90 with:
                                 gas gas_remaining wei
                                args block.timestamp, 720 * 24 * 3600, 75000 * 10^18
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                            stor5 = 1
                            emit 0xfeebeead: 75000 * 10^18
                            if 2 == stor0:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor0 = 2
                            if not arg2:
                                revert with 0, 'the gegoId error'
                            mem[(4 * ceil32(return_data.size)) + 736] = 0
                            mem[(4 * ceil32(return_data.size)) + 768] = 0
                            mem[(4 * ceil32(return_data.size)) + 800] = 0
                            mem[(4 * ceil32(return_data.size)) + 832] = 0
                            mem[(4 * ceil32(return_data.size)) + 864] = 0
                            mem[(4 * ceil32(return_data.size)) + 896] = 0
                            mem[(4 * ceil32(return_data.size)) + 928] = 0
                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                            mem[(4 * ceil32(return_data.size)) + 992] = 0
                            mem[(4 * ceil32(return_data.size)) + 1024] = 0
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0xf6c8d8de with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 320
                            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                            mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                            mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                            mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                            mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                            mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                            mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                            if not ext_call.return_data[0]:
                                revert with 0, 'no team'
                            mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                            mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x58597f9b with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 1376
                            require return_data.size >= 32
                            _1313 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                            _1349 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                            mem[(7 * ceil32(return_data.size)) + 1376] = _1349
                            require _1313 + (32 * _1349) + 32 <= return_data.size
                            mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1349] = mem[(6 * ceil32(return_data.size)) + _1313 + 1408 len 32 * _1349]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x5ef7c13d with:
                                    gas gas_remaining wei
                                   args arg1, arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2360 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2360] < _1349
                            if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2360]) + 1408] != arg2:
                                revert with 0, 'not gegoId owner'
                            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x9d5de6db with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x1b6d980d with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2936 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2981 = mem[_2936]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x25e3ee25 with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3128 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3172 = mem[_3128]
                            _3227 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3227] = 30
                            mem[_3227 + 32] = 'SafeMath: subtraction overflow'
                            if _2981 > _3172:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _3418 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3418] = 30
                            mem[_3418 + 32] = 'SafeMath: subtraction overflow'
                            if _2981 > ext_call.return_data[192]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2981
                            mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x134353b0 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2981, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x5687967 with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, _3172 - _2981
                        else:
                            mem[(2 * ceil32(return_data.size)) + 740] = sub_5af92964
                            mem[(2 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                            mem[(2 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0xd7f06e90 with:
                                 gas gas_remaining wei
                                args sub_5af92964, 720 * 24 * 3600, 75000 * 10^18
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                            stor5 = 1
                            emit 0xfeebeead: 75000 * 10^18
                            if 2 == stor0:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor0 = 2
                            if not arg2:
                                revert with 0, 'the gegoId error'
                            mem[(4 * ceil32(return_data.size)) + 736] = 0
                            mem[(4 * ceil32(return_data.size)) + 768] = 0
                            mem[(4 * ceil32(return_data.size)) + 800] = 0
                            mem[(4 * ceil32(return_data.size)) + 832] = 0
                            mem[(4 * ceil32(return_data.size)) + 864] = 0
                            mem[(4 * ceil32(return_data.size)) + 896] = 0
                            mem[(4 * ceil32(return_data.size)) + 928] = 0
                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                            mem[(4 * ceil32(return_data.size)) + 992] = 0
                            mem[(4 * ceil32(return_data.size)) + 1024] = 0
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0xf6c8d8de with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 320
                            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                            mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                            mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                            mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                            mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                            mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                            mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                            if not ext_call.return_data[0]:
                                revert with 0, 'no team'
                            mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                            mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x58597f9b with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 1376
                            require return_data.size >= 32
                            _1337 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                            _1368 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                            mem[(7 * ceil32(return_data.size)) + 1376] = _1368
                            require _1337 + (32 * _1368) + 32 <= return_data.size
                            mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1368] = mem[(6 * ceil32(return_data.size)) + _1337 + 1408 len 32 * _1368]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x5ef7c13d with:
                                    gas gas_remaining wei
                                   args arg1, arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2361 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2361] < _1368
                            if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2361]) + 1408] != arg2:
                                revert with 0, 'not gegoId owner'
                            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x9d5de6db with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x1b6d980d with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2937 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2982 = mem[_2937]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x25e3ee25 with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3129 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3173 = mem[_3129]
                            _3228 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3228] = 30
                            mem[_3228 + 32] = 'SafeMath: subtraction overflow'
                            if _2982 > _3173:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _3419 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3419] = 30
                            mem[_3419 + 32] = 'SafeMath: subtraction overflow'
                            if _2982 > ext_call.return_data[192]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2982
                            mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x134353b0 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2982, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x5687967 with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, _3173 - _2982
            else:
                mem[(2 * ceil32(return_data.size)) + 740] = arg1
                mem[(2 * ceil32(return_data.size)) + 772] = msg.sender
                if block.timestamp < sub_5af92964:
                    mem[(2 * ceil32(return_data.size)) + 804] = block.timestamp
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x76ae5299 with:
                            gas gas_remaining wei
                           args arg1, msg.sender, block.timestamp
                    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x4b88bf76 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x221b7ec6 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp < sub_e36eb4af:
                        if 2 == stor0:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor0 = 2
                        if not arg2:
                            revert with 0, 'the gegoId error'
                        mem[(4 * ceil32(return_data.size)) + 736] = 0
                        mem[(4 * ceil32(return_data.size)) + 768] = 0
                        mem[(4 * ceil32(return_data.size)) + 800] = 0
                        mem[(4 * ceil32(return_data.size)) + 832] = 0
                        mem[(4 * ceil32(return_data.size)) + 864] = 0
                        mem[(4 * ceil32(return_data.size)) + 896] = 0
                        mem[(4 * ceil32(return_data.size)) + 928] = 0
                        mem[(4 * ceil32(return_data.size)) + 960] = 0
                        mem[(4 * ceil32(return_data.size)) + 992] = 0
                        mem[(4 * ceil32(return_data.size)) + 1024] = 0
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0xf6c8d8de with:
                                gas gas_remaining wei
                               args arg1
                        mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 320
                        require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                        mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                        mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                        mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                        mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                        mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                        mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                        mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                        mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                        mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                        if not ext_call.return_data[0]:
                            revert with 0, 'no team'
                        mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                        mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x58597f9b with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 1376
                        require return_data.size >= 32
                        _1542 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                        _1576 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                        mem[(7 * ceil32(return_data.size)) + 1376] = _1576
                        require _1542 + (32 * _1576) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1576] = mem[(6 * ceil32(return_data.size)) + _1542 + 1408 len 32 * _1576]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x5ef7c13d with:
                                gas gas_remaining wei
                               args arg1, arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2362 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2362] < _1576
                        if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2362]) + 1408] != arg2:
                            revert with 0, 'not gegoId owner'
                        require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                        call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x9d5de6db with:
                             gas gas_remaining wei
                            args arg1, msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x1b6d980d with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2938 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2983 = mem[_2938]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x25e3ee25 with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3130 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3174 = mem[_3130]
                        _3229 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3229] = 30
                        mem[_3229 + 32] = 'SafeMath: subtraction overflow'
                        if _2983 > _3174:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        _3420 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3420] = 30
                        mem[_3420 + 32] = 'SafeMath: subtraction overflow'
                        if _2983 > ext_call.return_data[192]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2983
                        mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x134353b0 with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2983, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x5687967 with:
                             gas gas_remaining wei
                            args arg1, msg.sender, _3174 - _2983
                    else:
                        if stor5:
                            if 2 == stor0:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor0 = 2
                            if not arg2:
                                revert with 0, 'the gegoId error'
                            mem[(4 * ceil32(return_data.size)) + 736] = 0
                            mem[(4 * ceil32(return_data.size)) + 768] = 0
                            mem[(4 * ceil32(return_data.size)) + 800] = 0
                            mem[(4 * ceil32(return_data.size)) + 832] = 0
                            mem[(4 * ceil32(return_data.size)) + 864] = 0
                            mem[(4 * ceil32(return_data.size)) + 896] = 0
                            mem[(4 * ceil32(return_data.size)) + 928] = 0
                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                            mem[(4 * ceil32(return_data.size)) + 992] = 0
                            mem[(4 * ceil32(return_data.size)) + 1024] = 0
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0xf6c8d8de with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 320
                            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                            mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                            mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                            mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                            mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                            mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                            mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                            if not ext_call.return_data[0]:
                                revert with 0, 'no team'
                            mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                            mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x58597f9b with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 1376
                            require return_data.size >= 32
                            _1550 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                            _1586 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                            mem[(7 * ceil32(return_data.size)) + 1376] = _1586
                            require _1550 + (32 * _1586) + 32 <= return_data.size
                            mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1586] = mem[(6 * ceil32(return_data.size)) + _1550 + 1408 len 32 * _1586]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x5ef7c13d with:
                                    gas gas_remaining wei
                                   args arg1, arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2363 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2363] < _1586
                            if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2363]) + 1408] != arg2:
                                revert with 0, 'not gegoId owner'
                            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x9d5de6db with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x1b6d980d with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2939 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2984 = mem[_2939]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x25e3ee25 with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3131 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3175 = mem[_3131]
                            _3230 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3230] = 30
                            mem[_3230 + 32] = 'SafeMath: subtraction overflow'
                            if _2984 > _3175:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _3421 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3421] = 30
                            mem[_3421 + 32] = 'SafeMath: subtraction overflow'
                            if _2984 > ext_call.return_data[192]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2984
                            mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x134353b0 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2984, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x5687967 with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, _3175 - _2984
                        else:
                            if block.timestamp < sub_5af92964:
                                mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                                mem[(4 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                                mem[(4 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0xd7f06e90 with:
                                     gas gas_remaining wei
                                    args block.timestamp, 720 * 24 * 3600, 75000 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                                stor5 = 1
                                emit 0xfeebeead: 75000 * 10^18
                                if 2 == stor0:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor0 = 2
                                if not arg2:
                                    revert with 0, 'the gegoId error'
                                mem[(6 * ceil32(return_data.size)) + 736] = 0
                                mem[(6 * ceil32(return_data.size)) + 768] = 0
                                mem[(6 * ceil32(return_data.size)) + 800] = 0
                                mem[(6 * ceil32(return_data.size)) + 832] = 0
                                mem[(6 * ceil32(return_data.size)) + 864] = 0
                                mem[(6 * ceil32(return_data.size)) + 896] = 0
                                mem[(6 * ceil32(return_data.size)) + 928] = 0
                                mem[(6 * ceil32(return_data.size)) + 960] = 0
                                mem[(6 * ceil32(return_data.size)) + 992] = 0
                                mem[(6 * ceil32(return_data.size)) + 1024] = 0
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0xf6c8d8de with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 320
                                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                                mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                                mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                                mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                                mem[(7 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                                mem[(7 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                                mem[(7 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                                mem[(7 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'no team'
                                mem[(7 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 1380] = arg1
                                mem[(7 * ceil32(return_data.size)) + 1412] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x58597f9b with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 1376
                                require return_data.size >= 32
                                _2052 = mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + return_data.size + 1376 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                                _2091 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                                mem[(8 * ceil32(return_data.size)) + 1376] = _2091
                                require _2052 + (32 * _2091) + 32 <= return_data.size
                                mem[(8 * ceil32(return_data.size)) + 1408 len 32 * _2091] = mem[(7 * ceil32(return_data.size)) + _2052 + 1408 len 32 * _2091]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x5ef7c13d with:
                                        gas gas_remaining wei
                                       args arg1, arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4785 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4785] < _2091
                                if mem[(8 * ceil32(return_data.size)) + (32 * mem[_4785]) + 1408] != arg2:
                                    revert with 0, 'not gegoId owner'
                                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x9d5de6db with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x1b6d980d with:
                                        gas gas_remaining wei
                                       args arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5009 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5025 = mem[_5009]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x25e3ee25 with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5073 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5089 = mem[_5073]
                                _5105 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5105] = 30
                                mem[_5105 + 32] = 'SafeMath: subtraction overflow'
                                if _5025 > _5089:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                _5169 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5169] = 30
                                mem[_5169 + 32] = 'SafeMath: subtraction overflow'
                                if _5025 > ext_call.return_data[192]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _5025
                                mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 1100 len 20]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x134353b0 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _5025, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x5687967 with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, _5089 - _5025
                            else:
                                mem[(4 * ceil32(return_data.size)) + 740] = sub_5af92964
                                mem[(4 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                                mem[(4 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0xd7f06e90 with:
                                     gas gas_remaining wei
                                    args sub_5af92964, 720 * 24 * 3600, 75000 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                                stor5 = 1
                                emit 0xfeebeead: 75000 * 10^18
                                if 2 == stor0:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor0 = 2
                                if not arg2:
                                    revert with 0, 'the gegoId error'
                                mem[(6 * ceil32(return_data.size)) + 736] = 0
                                mem[(6 * ceil32(return_data.size)) + 768] = 0
                                mem[(6 * ceil32(return_data.size)) + 800] = 0
                                mem[(6 * ceil32(return_data.size)) + 832] = 0
                                mem[(6 * ceil32(return_data.size)) + 864] = 0
                                mem[(6 * ceil32(return_data.size)) + 896] = 0
                                mem[(6 * ceil32(return_data.size)) + 928] = 0
                                mem[(6 * ceil32(return_data.size)) + 960] = 0
                                mem[(6 * ceil32(return_data.size)) + 992] = 0
                                mem[(6 * ceil32(return_data.size)) + 1024] = 0
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0xf6c8d8de with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 320
                                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                                mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                                mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                                mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                                mem[(7 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                                mem[(7 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                                mem[(7 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                                mem[(7 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'no team'
                                mem[(7 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 1380] = arg1
                                mem[(7 * ceil32(return_data.size)) + 1412] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x58597f9b with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 1376
                                require return_data.size >= 32
                                _2072 = mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + return_data.size + 1376 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                                _2108 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                                mem[(8 * ceil32(return_data.size)) + 1376] = _2108
                                require _2072 + (32 * _2108) + 32 <= return_data.size
                                mem[(8 * ceil32(return_data.size)) + 1408 len 32 * _2108] = mem[(7 * ceil32(return_data.size)) + _2072 + 1408 len 32 * _2108]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x5ef7c13d with:
                                        gas gas_remaining wei
                                       args arg1, arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4786 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4786] < _2108
                                if mem[(8 * ceil32(return_data.size)) + (32 * mem[_4786]) + 1408] != arg2:
                                    revert with 0, 'not gegoId owner'
                                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x9d5de6db with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x1b6d980d with:
                                        gas gas_remaining wei
                                       args arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5010 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5026 = mem[_5010]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x25e3ee25 with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5074 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5090 = mem[_5074]
                                _5106 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5106] = 30
                                mem[_5106 + 32] = 'SafeMath: subtraction overflow'
                                if _5026 > _5090:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                _5170 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5170] = 30
                                mem[_5170 + 32] = 'SafeMath: subtraction overflow'
                                if _5026 > ext_call.return_data[192]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _5026
                                mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 1100 len 20]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x134353b0 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _5026, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x5687967 with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, _5090 - _5026
                else:
                    mem[(2 * ceil32(return_data.size)) + 804] = sub_5af92964
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x76ae5299 with:
                            gas gas_remaining wei
                           args arg1, msg.sender, sub_5af92964
                    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x4b88bf76 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x221b7ec6 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp < sub_e36eb4af:
                        if 2 == stor0:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor0 = 2
                        if not arg2:
                            revert with 0, 'the gegoId error'
                        mem[(4 * ceil32(return_data.size)) + 736] = 0
                        mem[(4 * ceil32(return_data.size)) + 768] = 0
                        mem[(4 * ceil32(return_data.size)) + 800] = 0
                        mem[(4 * ceil32(return_data.size)) + 832] = 0
                        mem[(4 * ceil32(return_data.size)) + 864] = 0
                        mem[(4 * ceil32(return_data.size)) + 896] = 0
                        mem[(4 * ceil32(return_data.size)) + 928] = 0
                        mem[(4 * ceil32(return_data.size)) + 960] = 0
                        mem[(4 * ceil32(return_data.size)) + 992] = 0
                        mem[(4 * ceil32(return_data.size)) + 1024] = 0
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0xf6c8d8de with:
                                gas gas_remaining wei
                               args arg1
                        mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 320
                        require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                        mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                        mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                        mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                        mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                        mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                        mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                        mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                        mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                        mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                        if not ext_call.return_data[0]:
                            revert with 0, 'no team'
                        mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                        mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x58597f9b with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 1376
                        require return_data.size >= 32
                        _1564 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                        _1604 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                        mem[(7 * ceil32(return_data.size)) + 1376] = _1604
                        require _1564 + (32 * _1604) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1604] = mem[(6 * ceil32(return_data.size)) + _1564 + 1408 len 32 * _1604]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x5ef7c13d with:
                                gas gas_remaining wei
                               args arg1, arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2364 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2364] < _1604
                        if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2364]) + 1408] != arg2:
                            revert with 0, 'not gegoId owner'
                        require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                        call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x9d5de6db with:
                             gas gas_remaining wei
                            args arg1, msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x1b6d980d with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2940 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2985 = mem[_2940]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x25e3ee25 with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3132 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3177 = mem[_3132]
                        _3232 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3232] = 30
                        mem[_3232 + 32] = 'SafeMath: subtraction overflow'
                        if _2985 > _3177:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        _3422 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3422] = 30
                        mem[_3422 + 32] = 'SafeMath: subtraction overflow'
                        if _2985 > ext_call.return_data[192]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2985
                        mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x134353b0 with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2985, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x5687967 with:
                             gas gas_remaining wei
                            args arg1, msg.sender, _3177 - _2985
                    else:
                        if stor5:
                            if 2 == stor0:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor0 = 2
                            if not arg2:
                                revert with 0, 'the gegoId error'
                            mem[(4 * ceil32(return_data.size)) + 736] = 0
                            mem[(4 * ceil32(return_data.size)) + 768] = 0
                            mem[(4 * ceil32(return_data.size)) + 800] = 0
                            mem[(4 * ceil32(return_data.size)) + 832] = 0
                            mem[(4 * ceil32(return_data.size)) + 864] = 0
                            mem[(4 * ceil32(return_data.size)) + 896] = 0
                            mem[(4 * ceil32(return_data.size)) + 928] = 0
                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                            mem[(4 * ceil32(return_data.size)) + 992] = 0
                            mem[(4 * ceil32(return_data.size)) + 1024] = 0
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0xf6c8d8de with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 320
                            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                            mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                            mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                            mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                            mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                            mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                            mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                            if not ext_call.return_data[0]:
                                revert with 0, 'no team'
                            mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                            mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x58597f9b with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 1376
                            require return_data.size >= 32
                            _1577 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                            _1611 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                            mem[(7 * ceil32(return_data.size)) + 1376] = _1611
                            require _1577 + (32 * _1611) + 32 <= return_data.size
                            mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1611] = mem[(6 * ceil32(return_data.size)) + _1577 + 1408 len 32 * _1611]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x5ef7c13d with:
                                    gas gas_remaining wei
                                   args arg1, arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2365 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2365] < _1611
                            if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2365]) + 1408] != arg2:
                                revert with 0, 'not gegoId owner'
                            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x9d5de6db with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x1b6d980d with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2941 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2986 = mem[_2941]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x25e3ee25 with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3133 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3178 = mem[_3133]
                            _3233 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3233] = 30
                            mem[_3233 + 32] = 'SafeMath: subtraction overflow'
                            if _2986 > _3178:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _3423 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3423] = 30
                            mem[_3423 + 32] = 'SafeMath: subtraction overflow'
                            if _2986 > ext_call.return_data[192]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2986
                            mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x134353b0 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2986, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x5687967 with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, _3178 - _2986
                        else:
                            if block.timestamp < sub_5af92964:
                                mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                                mem[(4 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                                mem[(4 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0xd7f06e90 with:
                                     gas gas_remaining wei
                                    args block.timestamp, 720 * 24 * 3600, 75000 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                                stor5 = 1
                                emit 0xfeebeead: 75000 * 10^18
                                if 2 == stor0:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor0 = 2
                                if not arg2:
                                    revert with 0, 'the gegoId error'
                                mem[(6 * ceil32(return_data.size)) + 736] = 0
                                mem[(6 * ceil32(return_data.size)) + 768] = 0
                                mem[(6 * ceil32(return_data.size)) + 800] = 0
                                mem[(6 * ceil32(return_data.size)) + 832] = 0
                                mem[(6 * ceil32(return_data.size)) + 864] = 0
                                mem[(6 * ceil32(return_data.size)) + 896] = 0
                                mem[(6 * ceil32(return_data.size)) + 928] = 0
                                mem[(6 * ceil32(return_data.size)) + 960] = 0
                                mem[(6 * ceil32(return_data.size)) + 992] = 0
                                mem[(6 * ceil32(return_data.size)) + 1024] = 0
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0xf6c8d8de with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 320
                                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                                mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                                mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                                mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                                mem[(7 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                                mem[(7 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                                mem[(7 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                                mem[(7 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'no team'
                                mem[(7 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 1380] = arg1
                                mem[(7 * ceil32(return_data.size)) + 1412] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x58597f9b with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 1376
                                require return_data.size >= 32
                                _2073 = mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + return_data.size + 1376 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                                _2109 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                                mem[(8 * ceil32(return_data.size)) + 1376] = _2109
                                require _2073 + (32 * _2109) + 32 <= return_data.size
                                mem[(8 * ceil32(return_data.size)) + 1408 len 32 * _2109] = mem[(7 * ceil32(return_data.size)) + _2073 + 1408 len 32 * _2109]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x5ef7c13d with:
                                        gas gas_remaining wei
                                       args arg1, arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4787 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4787] < _2109
                                if mem[(8 * ceil32(return_data.size)) + (32 * mem[_4787]) + 1408] != arg2:
                                    revert with 0, 'not gegoId owner'
                                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x9d5de6db with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x1b6d980d with:
                                        gas gas_remaining wei
                                       args arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5011 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5027 = mem[_5011]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x25e3ee25 with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5075 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5091 = mem[_5075]
                                _5107 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5107] = 30
                                mem[_5107 + 32] = 'SafeMath: subtraction overflow'
                                if _5027 > _5091:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                _5171 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5171] = 30
                                mem[_5171 + 32] = 'SafeMath: subtraction overflow'
                                if _5027 > ext_call.return_data[192]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _5027
                                mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 1100 len 20]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x134353b0 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _5027, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x5687967 with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, _5091 - _5027
                            else:
                                mem[(4 * ceil32(return_data.size)) + 740] = sub_5af92964
                                mem[(4 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                                mem[(4 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0xd7f06e90 with:
                                     gas gas_remaining wei
                                    args sub_5af92964, 720 * 24 * 3600, 75000 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                                stor5 = 1
                                emit 0xfeebeead: 75000 * 10^18
                                if 2 == stor0:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor0 = 2
                                if not arg2:
                                    revert with 0, 'the gegoId error'
                                mem[(6 * ceil32(return_data.size)) + 736] = 0
                                mem[(6 * ceil32(return_data.size)) + 768] = 0
                                mem[(6 * ceil32(return_data.size)) + 800] = 0
                                mem[(6 * ceil32(return_data.size)) + 832] = 0
                                mem[(6 * ceil32(return_data.size)) + 864] = 0
                                mem[(6 * ceil32(return_data.size)) + 896] = 0
                                mem[(6 * ceil32(return_data.size)) + 928] = 0
                                mem[(6 * ceil32(return_data.size)) + 960] = 0
                                mem[(6 * ceil32(return_data.size)) + 992] = 0
                                mem[(6 * ceil32(return_data.size)) + 1024] = 0
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0xf6c8d8de with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 320
                                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                                mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                                mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                                mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                                mem[(7 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                                mem[(7 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                                mem[(7 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                                mem[(7 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'no team'
                                mem[(7 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 1380] = arg1
                                mem[(7 * ceil32(return_data.size)) + 1412] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x58597f9b with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 1376
                                require return_data.size >= 32
                                _2096 = mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + return_data.size + 1376 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                                _2123 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                                mem[(8 * ceil32(return_data.size)) + 1376] = _2123
                                require _2096 + (32 * _2123) + 32 <= return_data.size
                                mem[(8 * ceil32(return_data.size)) + 1408 len 32 * _2123] = mem[(7 * ceil32(return_data.size)) + _2096 + 1408 len 32 * _2123]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x5ef7c13d with:
                                        gas gas_remaining wei
                                       args arg1, arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4788 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4788] < _2123
                                if mem[(8 * ceil32(return_data.size)) + (32 * mem[_4788]) + 1408] != arg2:
                                    revert with 0, 'not gegoId owner'
                                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x9d5de6db with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x1b6d980d with:
                                        gas gas_remaining wei
                                       args arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5012 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5028 = mem[_5012]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x25e3ee25 with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5076 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5092 = mem[_5076]
                                _5108 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5108] = 30
                                mem[_5108 + 32] = 'SafeMath: subtraction overflow'
                                if _5028 > _5092:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                _5172 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5172] = 30
                                mem[_5172 + 32] = 'SafeMath: subtraction overflow'
                                if _5028 > ext_call.return_data[192]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _5028
                                mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 1100 len 20]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x134353b0 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _5028, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x5687967 with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, _5092 - _5028
        else:
            mem[ceil32(return_data.size) + 672] = sub_5af92964
            mem[(2 * ceil32(return_data.size)) + 736] = 0x134353b000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 740] = arg1
            mem[(2 * ceil32(return_data.size)) + 772] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 804] = mem[ceil32(return_data.size) + 460 len 20]
            mem[(2 * ceil32(return_data.size)) + 836] = ext_call.return_data[64]
            mem[(2 * ceil32(return_data.size)) + 868] = ext_call.return_data[96]
            mem[(2 * ceil32(return_data.size)) + 900] = ext_call.return_data[128]
            mem[(2 * ceil32(return_data.size)) + 932] = ext_call.return_data[160]
            mem[(2 * ceil32(return_data.size)) + 964] = ext_call.return_data[192]
            mem[(2 * ceil32(return_data.size)) + 996] = ext_call.return_data[224]
            mem[(2 * ceil32(return_data.size)) + 1028] = sub_5af92964
            mem[(2 * ceil32(return_data.size)) + 1060] = ext_call.return_data[0]
            require ext_code.size(sub_d6395f95Address)
            call sub_d6395f95Address.0x134353b0 with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[0], mem[ceil32(return_data.size) + 460 len 20], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], sub_5af92964, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                if block.timestamp < sub_e36eb4af:
                    if 2 == stor0:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor0 = 2
                    if not arg2:
                        revert with 0, 'the gegoId error'
                    mem[(2 * ceil32(return_data.size)) + 736] = 0
                    mem[(2 * ceil32(return_data.size)) + 768] = 0
                    mem[(2 * ceil32(return_data.size)) + 800] = 0
                    mem[(2 * ceil32(return_data.size)) + 832] = 0
                    mem[(2 * ceil32(return_data.size)) + 864] = 0
                    mem[(2 * ceil32(return_data.size)) + 896] = 0
                    mem[(2 * ceil32(return_data.size)) + 928] = 0
                    mem[(2 * ceil32(return_data.size)) + 960] = 0
                    mem[(2 * ceil32(return_data.size)) + 992] = 0
                    mem[(2 * ceil32(return_data.size)) + 1024] = 0
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0xf6c8d8de with:
                            gas gas_remaining wei
                           args arg1
                    mem[(2 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 320
                    require bool((4 * ceil32(return_data.size)) + 1376 <= test266151307())
                    mem[(4 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                    mem[(4 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                    mem[(4 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                    mem[(4 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                    mem[(4 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                    mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                    mem[(4 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                    mem[(4 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                    mem[(4 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                    if not ext_call.return_data[0]:
                        revert with 0, 'no team'
                    mem[(4 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 1380] = arg1
                    mem[(4 * ceil32(return_data.size)) + 1412] = msg.sender
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x58597f9b with:
                            gas gas_remaining wei
                           args arg1, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 1376
                    require return_data.size >= 32
                    _711 = mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 1376 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                    _744 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                    mem[(6 * ceil32(return_data.size)) + 1376] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                    require _711 + (32 * _744) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 1408 len 32 * _744] = mem[(4 * ceil32(return_data.size)) + _711 + 1408 len 32 * _744]
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = arg2
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x5ef7c13d with:
                            gas gas_remaining wei
                           args arg1, arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2366 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2366] < _744
                    if mem[(6 * ceil32(return_data.size)) + (32 * mem[_2366]) + 1408] != arg2:
                        revert with 0, 'not gegoId owner'
                    require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                    call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg2
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x9d5de6db with:
                         gas gas_remaining wei
                        args arg1, msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x1b6d980d with:
                            gas gas_remaining wei
                           args arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2942 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2987 = mem[_2942]
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x25e3ee25 with:
                            gas gas_remaining wei
                           args arg1, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3134 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3179 = mem[_3134]
                    _3235 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3235] = 30
                    mem[_3235 + 32] = 'SafeMath: subtraction overflow'
                    if _2987 > _3179:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    _3425 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3425] = 30
                    mem[_3425 + 32] = 'SafeMath: subtraction overflow'
                    if _2987 > ext_call.return_data[192]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2987
                    mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 1100 len 20]
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x134353b0 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2987, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x5687967 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, _3179 - _2987
                else:
                    if stor5:
                        if 2 == stor0:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor0 = 2
                        if not arg2:
                            revert with 0, 'the gegoId error'
                        mem[(2 * ceil32(return_data.size)) + 736] = 0
                        mem[(2 * ceil32(return_data.size)) + 768] = 0
                        mem[(2 * ceil32(return_data.size)) + 800] = 0
                        mem[(2 * ceil32(return_data.size)) + 832] = 0
                        mem[(2 * ceil32(return_data.size)) + 864] = 0
                        mem[(2 * ceil32(return_data.size)) + 896] = 0
                        mem[(2 * ceil32(return_data.size)) + 928] = 0
                        mem[(2 * ceil32(return_data.size)) + 960] = 0
                        mem[(2 * ceil32(return_data.size)) + 992] = 0
                        mem[(2 * ceil32(return_data.size)) + 1024] = 0
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0xf6c8d8de with:
                                gas gas_remaining wei
                               args arg1
                        mem[(2 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 320
                        require bool((4 * ceil32(return_data.size)) + 1376 <= test266151307())
                        mem[(4 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                        mem[(4 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                        mem[(4 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                        mem[(4 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                        mem[(4 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                        mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                        mem[(4 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                        mem[(4 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                        mem[(4 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                        if not ext_call.return_data[0]:
                            revert with 0, 'no team'
                        mem[(4 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 1380] = arg1
                        mem[(4 * ceil32(return_data.size)) + 1412] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x58597f9b with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 1376
                        require return_data.size >= 32
                        _724 = mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + return_data.size + 1376 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                        _757 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                        mem[(6 * ceil32(return_data.size)) + 1376] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                        require _724 + (32 * _757) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + 1408 len 32 * _757] = mem[(4 * ceil32(return_data.size)) + _724 + 1408 len 32 * _757]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x5ef7c13d with:
                                gas gas_remaining wei
                               args arg1, arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2367 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2367] < _757
                        if mem[(6 * ceil32(return_data.size)) + (32 * mem[_2367]) + 1408] != arg2:
                            revert with 0, 'not gegoId owner'
                        require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                        call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x9d5de6db with:
                             gas gas_remaining wei
                            args arg1, msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x1b6d980d with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2943 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2988 = mem[_2943]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x25e3ee25 with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3135 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3180 = mem[_3135]
                        _3236 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3236] = 30
                        mem[_3236 + 32] = 'SafeMath: subtraction overflow'
                        if _2988 > _3180:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        _3426 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3426] = 30
                        mem[_3426 + 32] = 'SafeMath: subtraction overflow'
                        if _2988 > ext_call.return_data[192]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2988
                        mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 1100 len 20]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x134353b0 with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2988, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x5687967 with:
                             gas gas_remaining wei
                            args arg1, msg.sender, _3180 - _2988
                    else:
                        if block.timestamp < sub_5af92964:
                            mem[(2 * ceil32(return_data.size)) + 740] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                            mem[(2 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0xd7f06e90 with:
                                 gas gas_remaining wei
                                args block.timestamp, 720 * 24 * 3600, 75000 * 10^18
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                            stor5 = 1
                            emit 0xfeebeead: 75000 * 10^18
                            if 2 == stor0:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor0 = 2
                            if not arg2:
                                revert with 0, 'the gegoId error'
                            mem[(4 * ceil32(return_data.size)) + 736] = 0
                            mem[(4 * ceil32(return_data.size)) + 768] = 0
                            mem[(4 * ceil32(return_data.size)) + 800] = 0
                            mem[(4 * ceil32(return_data.size)) + 832] = 0
                            mem[(4 * ceil32(return_data.size)) + 864] = 0
                            mem[(4 * ceil32(return_data.size)) + 896] = 0
                            mem[(4 * ceil32(return_data.size)) + 928] = 0
                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                            mem[(4 * ceil32(return_data.size)) + 992] = 0
                            mem[(4 * ceil32(return_data.size)) + 1024] = 0
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0xf6c8d8de with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 320
                            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                            mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                            mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                            mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                            mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                            mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                            mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                            if not ext_call.return_data[0]:
                                revert with 0, 'no team'
                            mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                            mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x58597f9b with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 1376
                            require return_data.size >= 32
                            _1339 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                            _1372 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                            mem[(7 * ceil32(return_data.size)) + 1376] = _1372
                            require _1339 + (32 * _1372) + 32 <= return_data.size
                            mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1372] = mem[(6 * ceil32(return_data.size)) + _1339 + 1408 len 32 * _1372]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x5ef7c13d with:
                                    gas gas_remaining wei
                                   args arg1, arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2368 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2368] < _1372
                            if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2368]) + 1408] != arg2:
                                revert with 0, 'not gegoId owner'
                            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x9d5de6db with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x1b6d980d with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2944 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2989 = mem[_2944]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x25e3ee25 with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3136 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3181 = mem[_3136]
                            _3237 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3237] = 30
                            mem[_3237 + 32] = 'SafeMath: subtraction overflow'
                            if _2989 > _3181:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _3427 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3427] = 30
                            mem[_3427 + 32] = 'SafeMath: subtraction overflow'
                            if _2989 > ext_call.return_data[192]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2989
                            mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x134353b0 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2989, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x5687967 with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, _3181 - _2989
                        else:
                            mem[(2 * ceil32(return_data.size)) + 740] = sub_5af92964
                            mem[(2 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                            mem[(2 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0xd7f06e90 with:
                                 gas gas_remaining wei
                                args sub_5af92964, 720 * 24 * 3600, 75000 * 10^18
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                            stor5 = 1
                            emit 0xfeebeead: 75000 * 10^18
                            if 2 == stor0:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor0 = 2
                            if not arg2:
                                revert with 0, 'the gegoId error'
                            mem[(4 * ceil32(return_data.size)) + 736] = 0
                            mem[(4 * ceil32(return_data.size)) + 768] = 0
                            mem[(4 * ceil32(return_data.size)) + 800] = 0
                            mem[(4 * ceil32(return_data.size)) + 832] = 0
                            mem[(4 * ceil32(return_data.size)) + 864] = 0
                            mem[(4 * ceil32(return_data.size)) + 896] = 0
                            mem[(4 * ceil32(return_data.size)) + 928] = 0
                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                            mem[(4 * ceil32(return_data.size)) + 992] = 0
                            mem[(4 * ceil32(return_data.size)) + 1024] = 0
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0xf6c8d8de with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 320
                            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                            mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                            mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                            mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                            mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                            mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                            mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                            if not ext_call.return_data[0]:
                                revert with 0, 'no team'
                            mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                            mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x58597f9b with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 1376
                            require return_data.size >= 32
                            _1361 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                            _1396 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                            mem[(7 * ceil32(return_data.size)) + 1376] = _1396
                            require _1361 + (32 * _1396) + 32 <= return_data.size
                            mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1396] = mem[(6 * ceil32(return_data.size)) + _1361 + 1408 len 32 * _1396]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x5ef7c13d with:
                                    gas gas_remaining wei
                                   args arg1, arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2369 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2369] < _1396
                            if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2369]) + 1408] != arg2:
                                revert with 0, 'not gegoId owner'
                            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x9d5de6db with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x1b6d980d with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2945 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2990 = mem[_2945]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x25e3ee25 with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3137 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3182 = mem[_3137]
                            _3238 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3238] = 30
                            mem[_3238 + 32] = 'SafeMath: subtraction overflow'
                            if _2990 > _3182:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _3428 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3428] = 30
                            mem[_3428 + 32] = 'SafeMath: subtraction overflow'
                            if _2990 > ext_call.return_data[192]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2990
                            mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x134353b0 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2990, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x5687967 with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, _3182 - _2990
            else:
                mem[(2 * ceil32(return_data.size)) + 740] = arg1
                mem[(2 * ceil32(return_data.size)) + 772] = msg.sender
                if block.timestamp < sub_5af92964:
                    mem[(2 * ceil32(return_data.size)) + 804] = block.timestamp
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x76ae5299 with:
                            gas gas_remaining wei
                           args arg1, msg.sender, block.timestamp
                    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x4b88bf76 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x221b7ec6 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp < sub_e36eb4af:
                        if 2 == stor0:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor0 = 2
                        if not arg2:
                            revert with 0, 'the gegoId error'
                        mem[(4 * ceil32(return_data.size)) + 736] = 0
                        mem[(4 * ceil32(return_data.size)) + 768] = 0
                        mem[(4 * ceil32(return_data.size)) + 800] = 0
                        mem[(4 * ceil32(return_data.size)) + 832] = 0
                        mem[(4 * ceil32(return_data.size)) + 864] = 0
                        mem[(4 * ceil32(return_data.size)) + 896] = 0
                        mem[(4 * ceil32(return_data.size)) + 928] = 0
                        mem[(4 * ceil32(return_data.size)) + 960] = 0
                        mem[(4 * ceil32(return_data.size)) + 992] = 0
                        mem[(4 * ceil32(return_data.size)) + 1024] = 0
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0xf6c8d8de with:
                                gas gas_remaining wei
                               args arg1
                        mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 320
                        require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                        mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                        mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                        mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                        mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                        mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                        mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                        mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                        mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                        mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                        if not ext_call.return_data[0]:
                            revert with 0, 'no team'
                        mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                        mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x58597f9b with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 1376
                        require return_data.size >= 32
                        _1567 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                        _1605 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                        mem[(7 * ceil32(return_data.size)) + 1376] = _1605
                        require _1567 + (32 * _1605) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1605] = mem[(6 * ceil32(return_data.size)) + _1567 + 1408 len 32 * _1605]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x5ef7c13d with:
                                gas gas_remaining wei
                               args arg1, arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2370 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2370] < _1605
                        if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2370]) + 1408] != arg2:
                            revert with 0, 'not gegoId owner'
                        require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                        call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x9d5de6db with:
                             gas gas_remaining wei
                            args arg1, msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x1b6d980d with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2946 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2991 = mem[_2946]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x25e3ee25 with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3138 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3183 = mem[_3138]
                        _3239 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3239] = 30
                        mem[_3239 + 32] = 'SafeMath: subtraction overflow'
                        if _2991 > _3183:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        _3429 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3429] = 30
                        mem[_3429 + 32] = 'SafeMath: subtraction overflow'
                        if _2991 > ext_call.return_data[192]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2991
                        mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x134353b0 with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2991, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x5687967 with:
                             gas gas_remaining wei
                            args arg1, msg.sender, _3183 - _2991
                    else:
                        if stor5:
                            if 2 == stor0:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor0 = 2
                            if not arg2:
                                revert with 0, 'the gegoId error'
                            mem[(4 * ceil32(return_data.size)) + 736] = 0
                            mem[(4 * ceil32(return_data.size)) + 768] = 0
                            mem[(4 * ceil32(return_data.size)) + 800] = 0
                            mem[(4 * ceil32(return_data.size)) + 832] = 0
                            mem[(4 * ceil32(return_data.size)) + 864] = 0
                            mem[(4 * ceil32(return_data.size)) + 896] = 0
                            mem[(4 * ceil32(return_data.size)) + 928] = 0
                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                            mem[(4 * ceil32(return_data.size)) + 992] = 0
                            mem[(4 * ceil32(return_data.size)) + 1024] = 0
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0xf6c8d8de with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 320
                            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                            mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                            mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                            mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                            mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                            mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                            mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                            if not ext_call.return_data[0]:
                                revert with 0, 'no team'
                            mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                            mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x58597f9b with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 1376
                            require return_data.size >= 32
                            _1578 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                            _1613 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                            mem[(7 * ceil32(return_data.size)) + 1376] = _1613
                            require _1578 + (32 * _1613) + 32 <= return_data.size
                            mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1613] = mem[(6 * ceil32(return_data.size)) + _1578 + 1408 len 32 * _1613]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x5ef7c13d with:
                                    gas gas_remaining wei
                                   args arg1, arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2371 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2371] < _1613
                            if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2371]) + 1408] != arg2:
                                revert with 0, 'not gegoId owner'
                            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x9d5de6db with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x1b6d980d with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2947 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2992 = mem[_2947]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x25e3ee25 with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3139 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3184 = mem[_3139]
                            _3240 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3240] = 30
                            mem[_3240 + 32] = 'SafeMath: subtraction overflow'
                            if _2992 > _3184:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _3430 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3430] = 30
                            mem[_3430 + 32] = 'SafeMath: subtraction overflow'
                            if _2992 > ext_call.return_data[192]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2992
                            mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x134353b0 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2992, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x5687967 with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, _3184 - _2992
                        else:
                            if block.timestamp < sub_5af92964:
                                mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                                mem[(4 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                                mem[(4 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0xd7f06e90 with:
                                     gas gas_remaining wei
                                    args block.timestamp, 720 * 24 * 3600, 75000 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                                stor5 = 1
                                emit 0xfeebeead: 75000 * 10^18
                                if 2 == stor0:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor0 = 2
                                if not arg2:
                                    revert with 0, 'the gegoId error'
                                mem[(6 * ceil32(return_data.size)) + 736] = 0
                                mem[(6 * ceil32(return_data.size)) + 768] = 0
                                mem[(6 * ceil32(return_data.size)) + 800] = 0
                                mem[(6 * ceil32(return_data.size)) + 832] = 0
                                mem[(6 * ceil32(return_data.size)) + 864] = 0
                                mem[(6 * ceil32(return_data.size)) + 896] = 0
                                mem[(6 * ceil32(return_data.size)) + 928] = 0
                                mem[(6 * ceil32(return_data.size)) + 960] = 0
                                mem[(6 * ceil32(return_data.size)) + 992] = 0
                                mem[(6 * ceil32(return_data.size)) + 1024] = 0
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0xf6c8d8de with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 320
                                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                                mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                                mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                                mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                                mem[(7 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                                mem[(7 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                                mem[(7 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                                mem[(7 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'no team'
                                mem[(7 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 1380] = arg1
                                mem[(7 * ceil32(return_data.size)) + 1412] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x58597f9b with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 1376
                                require return_data.size >= 32
                                _2076 = mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + return_data.size + 1376 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                                _2111 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                                mem[(8 * ceil32(return_data.size)) + 1376] = _2111
                                require _2076 + (32 * _2111) + 32 <= return_data.size
                                mem[(8 * ceil32(return_data.size)) + 1408 len 32 * _2111] = mem[(7 * ceil32(return_data.size)) + _2076 + 1408 len 32 * _2111]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x5ef7c13d with:
                                        gas gas_remaining wei
                                       args arg1, arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4789 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4789] < _2111
                                if mem[(8 * ceil32(return_data.size)) + (32 * mem[_4789]) + 1408] != arg2:
                                    revert with 0, 'not gegoId owner'
                                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x9d5de6db with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x1b6d980d with:
                                        gas gas_remaining wei
                                       args arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5013 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5029 = mem[_5013]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x25e3ee25 with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5077 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5093 = mem[_5077]
                                _5109 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5109] = 30
                                mem[_5109 + 32] = 'SafeMath: subtraction overflow'
                                if _5029 > _5093:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                _5173 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5173] = 30
                                mem[_5173 + 32] = 'SafeMath: subtraction overflow'
                                if _5029 > ext_call.return_data[192]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _5029
                                mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 1100 len 20]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x134353b0 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _5029, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x5687967 with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, _5093 - _5029
                            else:
                                mem[(4 * ceil32(return_data.size)) + 740] = sub_5af92964
                                mem[(4 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                                mem[(4 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0xd7f06e90 with:
                                     gas gas_remaining wei
                                    args sub_5af92964, 720 * 24 * 3600, 75000 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                                stor5 = 1
                                emit 0xfeebeead: 75000 * 10^18
                                if 2 == stor0:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor0 = 2
                                if not arg2:
                                    revert with 0, 'the gegoId error'
                                mem[(6 * ceil32(return_data.size)) + 736] = 0
                                mem[(6 * ceil32(return_data.size)) + 768] = 0
                                mem[(6 * ceil32(return_data.size)) + 800] = 0
                                mem[(6 * ceil32(return_data.size)) + 832] = 0
                                mem[(6 * ceil32(return_data.size)) + 864] = 0
                                mem[(6 * ceil32(return_data.size)) + 896] = 0
                                mem[(6 * ceil32(return_data.size)) + 928] = 0
                                mem[(6 * ceil32(return_data.size)) + 960] = 0
                                mem[(6 * ceil32(return_data.size)) + 992] = 0
                                mem[(6 * ceil32(return_data.size)) + 1024] = 0
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0xf6c8d8de with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 320
                                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                                mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                                mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                                mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                                mem[(7 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                                mem[(7 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                                mem[(7 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                                mem[(7 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'no team'
                                mem[(7 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 1380] = arg1
                                mem[(7 * ceil32(return_data.size)) + 1412] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x58597f9b with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 1376
                                require return_data.size >= 32
                                _2097 = mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + return_data.size + 1376 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                                _2124 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                                mem[(8 * ceil32(return_data.size)) + 1376] = _2124
                                require _2097 + (32 * _2124) + 32 <= return_data.size
                                mem[(8 * ceil32(return_data.size)) + 1408 len 32 * _2124] = mem[(7 * ceil32(return_data.size)) + _2097 + 1408 len 32 * _2124]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x5ef7c13d with:
                                        gas gas_remaining wei
                                       args arg1, arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4790 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4790] < _2124
                                if mem[(8 * ceil32(return_data.size)) + (32 * mem[_4790]) + 1408] != arg2:
                                    revert with 0, 'not gegoId owner'
                                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x9d5de6db with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x1b6d980d with:
                                        gas gas_remaining wei
                                       args arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5014 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5030 = mem[_5014]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x25e3ee25 with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5078 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5094 = mem[_5078]
                                _5110 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5110] = 30
                                mem[_5110 + 32] = 'SafeMath: subtraction overflow'
                                if _5030 > _5094:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                _5174 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5174] = 30
                                mem[_5174 + 32] = 'SafeMath: subtraction overflow'
                                if _5030 > ext_call.return_data[192]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _5030
                                mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 1100 len 20]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x134353b0 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _5030, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x5687967 with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, _5094 - _5030
                else:
                    mem[(2 * ceil32(return_data.size)) + 804] = sub_5af92964
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x76ae5299 with:
                            gas gas_remaining wei
                           args arg1, msg.sender, sub_5af92964
                    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x4b88bf76 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x221b7ec6 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp < sub_e36eb4af:
                        if 2 == stor0:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor0 = 2
                        if not arg2:
                            revert with 0, 'the gegoId error'
                        mem[(4 * ceil32(return_data.size)) + 736] = 0
                        mem[(4 * ceil32(return_data.size)) + 768] = 0
                        mem[(4 * ceil32(return_data.size)) + 800] = 0
                        mem[(4 * ceil32(return_data.size)) + 832] = 0
                        mem[(4 * ceil32(return_data.size)) + 864] = 0
                        mem[(4 * ceil32(return_data.size)) + 896] = 0
                        mem[(4 * ceil32(return_data.size)) + 928] = 0
                        mem[(4 * ceil32(return_data.size)) + 960] = 0
                        mem[(4 * ceil32(return_data.size)) + 992] = 0
                        mem[(4 * ceil32(return_data.size)) + 1024] = 0
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0xf6c8d8de with:
                                gas gas_remaining wei
                               args arg1
                        mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 320
                        require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                        mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                        mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                        mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                        mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                        mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                        mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                        mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                        mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                        mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                        if not ext_call.return_data[0]:
                            revert with 0, 'no team'
                        mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                        mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x58597f9b with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 1376
                        require return_data.size >= 32
                        _1591 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                        _1629 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                        mem[(7 * ceil32(return_data.size)) + 1376] = _1629
                        require _1591 + (32 * _1629) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1629] = mem[(6 * ceil32(return_data.size)) + _1591 + 1408 len 32 * _1629]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x5ef7c13d with:
                                gas gas_remaining wei
                               args arg1, arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2372 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2372] < _1629
                        if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2372]) + 1408] != arg2:
                            revert with 0, 'not gegoId owner'
                        require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                        call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x9d5de6db with:
                             gas gas_remaining wei
                            args arg1, msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x1b6d980d with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2948 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2993 = mem[_2948]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x25e3ee25 with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3140 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3185 = mem[_3140]
                        _3242 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3242] = 30
                        mem[_3242 + 32] = 'SafeMath: subtraction overflow'
                        if _2993 > _3185:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        _3432 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3432] = 30
                        mem[_3432 + 32] = 'SafeMath: subtraction overflow'
                        if _2993 > ext_call.return_data[192]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2993
                        mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x134353b0 with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2993, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x5687967 with:
                             gas gas_remaining wei
                            args arg1, msg.sender, _3185 - _2993
                    else:
                        if stor5:
                            if 2 == stor0:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor0 = 2
                            if not arg2:
                                revert with 0, 'the gegoId error'
                            mem[(4 * ceil32(return_data.size)) + 736] = 0
                            mem[(4 * ceil32(return_data.size)) + 768] = 0
                            mem[(4 * ceil32(return_data.size)) + 800] = 0
                            mem[(4 * ceil32(return_data.size)) + 832] = 0
                            mem[(4 * ceil32(return_data.size)) + 864] = 0
                            mem[(4 * ceil32(return_data.size)) + 896] = 0
                            mem[(4 * ceil32(return_data.size)) + 928] = 0
                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                            mem[(4 * ceil32(return_data.size)) + 992] = 0
                            mem[(4 * ceil32(return_data.size)) + 1024] = 0
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0xf6c8d8de with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 320
                            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                            mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                            mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                            mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                            mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                            mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                            mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                            if not ext_call.return_data[0]:
                                revert with 0, 'no team'
                            mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                            mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x58597f9b with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 1376
                            require return_data.size >= 32
                            _1606 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                            _1636 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                            mem[(7 * ceil32(return_data.size)) + 1376] = _1636
                            require _1606 + (32 * _1636) + 32 <= return_data.size
                            mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1636] = mem[(6 * ceil32(return_data.size)) + _1606 + 1408 len 32 * _1636]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x5ef7c13d with:
                                    gas gas_remaining wei
                                   args arg1, arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2373 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2373] < _1636
                            if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2373]) + 1408] != arg2:
                                revert with 0, 'not gegoId owner'
                            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x9d5de6db with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x1b6d980d with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2949 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2994 = mem[_2949]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x25e3ee25 with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3141 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3186 = mem[_3141]
                            _3243 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3243] = 30
                            mem[_3243 + 32] = 'SafeMath: subtraction overflow'
                            if _2994 > _3186:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _3433 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3433] = 30
                            mem[_3433 + 32] = 'SafeMath: subtraction overflow'
                            if _2994 > ext_call.return_data[192]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2994
                            mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x134353b0 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2994, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x5687967 with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, _3186 - _2994
                        else:
                            if block.timestamp < sub_5af92964:
                                mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                                mem[(4 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                                mem[(4 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0xd7f06e90 with:
                                     gas gas_remaining wei
                                    args block.timestamp, 720 * 24 * 3600, 75000 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                                stor5 = 1
                                emit 0xfeebeead: 75000 * 10^18
                                if 2 == stor0:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor0 = 2
                                if not arg2:
                                    revert with 0, 'the gegoId error'
                                mem[(6 * ceil32(return_data.size)) + 736] = 0
                                mem[(6 * ceil32(return_data.size)) + 768] = 0
                                mem[(6 * ceil32(return_data.size)) + 800] = 0
                                mem[(6 * ceil32(return_data.size)) + 832] = 0
                                mem[(6 * ceil32(return_data.size)) + 864] = 0
                                mem[(6 * ceil32(return_data.size)) + 896] = 0
                                mem[(6 * ceil32(return_data.size)) + 928] = 0
                                mem[(6 * ceil32(return_data.size)) + 960] = 0
                                mem[(6 * ceil32(return_data.size)) + 992] = 0
                                mem[(6 * ceil32(return_data.size)) + 1024] = 0
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0xf6c8d8de with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 320
                                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                                mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                                mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                                mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                                mem[(7 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                                mem[(7 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                                mem[(7 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                                mem[(7 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'no team'
                                mem[(7 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 1380] = arg1
                                mem[(7 * ceil32(return_data.size)) + 1412] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x58597f9b with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 1376
                                require return_data.size >= 32
                                _2098 = mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + return_data.size + 1376 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                                _2125 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                                mem[(8 * ceil32(return_data.size)) + 1376] = _2125
                                require _2098 + (32 * _2125) + 32 <= return_data.size
                                mem[(8 * ceil32(return_data.size)) + 1408 len 32 * _2125] = mem[(7 * ceil32(return_data.size)) + _2098 + 1408 len 32 * _2125]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x5ef7c13d with:
                                        gas gas_remaining wei
                                       args arg1, arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4791 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4791] < _2125
                                if mem[(8 * ceil32(return_data.size)) + (32 * mem[_4791]) + 1408] != arg2:
                                    revert with 0, 'not gegoId owner'
                                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x9d5de6db with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x1b6d980d with:
                                        gas gas_remaining wei
                                       args arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5015 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5031 = mem[_5015]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x25e3ee25 with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5079 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5095 = mem[_5079]
                                _5111 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5111] = 30
                                mem[_5111 + 32] = 'SafeMath: subtraction overflow'
                                if _5031 > _5095:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                _5175 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5175] = 30
                                mem[_5175 + 32] = 'SafeMath: subtraction overflow'
                                if _5031 > ext_call.return_data[192]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _5031
                                mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 1100 len 20]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x134353b0 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _5031, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x5687967 with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, _5095 - _5031
                            else:
                                mem[(4 * ceil32(return_data.size)) + 740] = sub_5af92964
                                mem[(4 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                                mem[(4 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0xd7f06e90 with:
                                     gas gas_remaining wei
                                    args sub_5af92964, 720 * 24 * 3600, 75000 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                                stor5 = 1
                                emit 0xfeebeead: 75000 * 10^18
                                if 2 == stor0:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor0 = 2
                                if not arg2:
                                    revert with 0, 'the gegoId error'
                                mem[(6 * ceil32(return_data.size)) + 736] = 0
                                mem[(6 * ceil32(return_data.size)) + 768] = 0
                                mem[(6 * ceil32(return_data.size)) + 800] = 0
                                mem[(6 * ceil32(return_data.size)) + 832] = 0
                                mem[(6 * ceil32(return_data.size)) + 864] = 0
                                mem[(6 * ceil32(return_data.size)) + 896] = 0
                                mem[(6 * ceil32(return_data.size)) + 928] = 0
                                mem[(6 * ceil32(return_data.size)) + 960] = 0
                                mem[(6 * ceil32(return_data.size)) + 992] = 0
                                mem[(6 * ceil32(return_data.size)) + 1024] = 0
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0xf6c8d8de with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 320
                                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                                mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                                mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                                mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                                mem[(7 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                                mem[(7 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                                mem[(7 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                                mem[(7 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'no team'
                                mem[(7 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 1380] = arg1
                                mem[(7 * ceil32(return_data.size)) + 1412] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x58597f9b with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 1376
                                require return_data.size >= 32
                                _2116 = mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + return_data.size + 1376 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                                _2136 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                                mem[(8 * ceil32(return_data.size)) + 1376] = _2136
                                require _2116 + (32 * _2136) + 32 <= return_data.size
                                mem[(8 * ceil32(return_data.size)) + 1408 len 32 * _2136] = mem[(7 * ceil32(return_data.size)) + _2116 + 1408 len 32 * _2136]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x5ef7c13d with:
                                        gas gas_remaining wei
                                       args arg1, arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4792 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4792] < _2136
                                if mem[(8 * ceil32(return_data.size)) + (32 * mem[_4792]) + 1408] != arg2:
                                    revert with 0, 'not gegoId owner'
                                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x9d5de6db with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x1b6d980d with:
                                        gas gas_remaining wei
                                       args arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5016 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5032 = mem[_5016]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x25e3ee25 with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5080 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5096 = mem[_5080]
                                _5112 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5112] = 30
                                mem[_5112 + 32] = 'SafeMath: subtraction overflow'
                                if _5032 > _5096:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                _5176 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5176] = 30
                                mem[_5176 + 32] = 'SafeMath: subtraction overflow'
                                if _5032 > ext_call.return_data[192]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _5032
                                mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 1100 len 20]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x134353b0 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _5032, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x5687967 with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, _5096 - _5032
    else:
        mem[ceil32(return_data.size) + 772] = sub_5af92964
        require ext_code.size(sub_d6395f95Address)
        staticcall sub_d6395f95Address.0xd93412f4 with:
                gas gas_remaining wei
               args arg1, sub_5af92964
        mem[ceil32(return_data.size) + 736] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 704] = ext_call.return_data[0]
        if block.timestamp < sub_5af92964:
            mem[ceil32(return_data.size) + 672] = block.timestamp
            mem[(2 * ceil32(return_data.size)) + 736] = 0x134353b000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 740] = arg1
            mem[(2 * ceil32(return_data.size)) + 772] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 804] = mem[ceil32(return_data.size) + 460 len 20]
            mem[(2 * ceil32(return_data.size)) + 836] = ext_call.return_data[64]
            mem[(2 * ceil32(return_data.size)) + 868] = ext_call.return_data[96]
            mem[(2 * ceil32(return_data.size)) + 900] = ext_call.return_data[128]
            mem[(2 * ceil32(return_data.size)) + 932] = ext_call.return_data[160]
            mem[(2 * ceil32(return_data.size)) + 964] = ext_call.return_data[192]
            mem[(2 * ceil32(return_data.size)) + 996] = ext_call.return_data[224]
            mem[(2 * ceil32(return_data.size)) + 1028] = block.timestamp
            mem[(2 * ceil32(return_data.size)) + 1060] = ext_call.return_data[0]
            require ext_code.size(sub_d6395f95Address)
            call sub_d6395f95Address.0x134353b0 with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[0], mem[ceil32(return_data.size) + 460 len 20], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], block.timestamp, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                if block.timestamp < sub_e36eb4af:
                    if 2 == stor0:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor0 = 2
                    if not arg2:
                        revert with 0, 'the gegoId error'
                    mem[(2 * ceil32(return_data.size)) + 736] = 0
                    mem[(2 * ceil32(return_data.size)) + 768] = 0
                    mem[(2 * ceil32(return_data.size)) + 800] = 0
                    mem[(2 * ceil32(return_data.size)) + 832] = 0
                    mem[(2 * ceil32(return_data.size)) + 864] = 0
                    mem[(2 * ceil32(return_data.size)) + 896] = 0
                    mem[(2 * ceil32(return_data.size)) + 928] = 0
                    mem[(2 * ceil32(return_data.size)) + 960] = 0
                    mem[(2 * ceil32(return_data.size)) + 992] = 0
                    mem[(2 * ceil32(return_data.size)) + 1024] = 0
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0xf6c8d8de with:
                            gas gas_remaining wei
                           args arg1
                    mem[(2 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 320
                    require bool((4 * ceil32(return_data.size)) + 1376 <= test266151307())
                    mem[(4 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                    mem[(4 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                    mem[(4 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                    mem[(4 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                    mem[(4 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                    mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                    mem[(4 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                    mem[(4 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                    mem[(4 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                    if not ext_call.return_data[0]:
                        revert with 0, 'no team'
                    mem[(4 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 1380] = arg1
                    mem[(4 * ceil32(return_data.size)) + 1412] = msg.sender
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x58597f9b with:
                            gas gas_remaining wei
                           args arg1, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 1376
                    require return_data.size >= 32
                    _714 = mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 1376 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                    _749 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                    mem[(6 * ceil32(return_data.size)) + 1376] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                    require _714 + (32 * _749) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 1408 len 32 * _749] = mem[(4 * ceil32(return_data.size)) + _714 + 1408 len 32 * _749]
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = arg2
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x5ef7c13d with:
                            gas gas_remaining wei
                           args arg1, arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2375 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2375] < _749
                    if mem[(6 * ceil32(return_data.size)) + (32 * mem[_2375]) + 1408] != arg2:
                        revert with 0, 'not gegoId owner'
                    require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                    call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg2
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x9d5de6db with:
                         gas gas_remaining wei
                        args arg1, msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x1b6d980d with:
                            gas gas_remaining wei
                           args arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2951 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2996 = mem[_2951]
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x25e3ee25 with:
                            gas gas_remaining wei
                           args arg1, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3143 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3188 = mem[_3143]
                    _3246 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3246] = 30
                    mem[_3246 + 32] = 'SafeMath: subtraction overflow'
                    if _2996 > _3188:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    _3436 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3436] = 30
                    mem[_3436 + 32] = 'SafeMath: subtraction overflow'
                    if _2996 > ext_call.return_data[192]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2996
                    mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 1100 len 20]
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x134353b0 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2996, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x5687967 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, _3188 - _2996
                else:
                    if stor5:
                        if 2 == stor0:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor0 = 2
                        if not arg2:
                            revert with 0, 'the gegoId error'
                        mem[(2 * ceil32(return_data.size)) + 736] = 0
                        mem[(2 * ceil32(return_data.size)) + 768] = 0
                        mem[(2 * ceil32(return_data.size)) + 800] = 0
                        mem[(2 * ceil32(return_data.size)) + 832] = 0
                        mem[(2 * ceil32(return_data.size)) + 864] = 0
                        mem[(2 * ceil32(return_data.size)) + 896] = 0
                        mem[(2 * ceil32(return_data.size)) + 928] = 0
                        mem[(2 * ceil32(return_data.size)) + 960] = 0
                        mem[(2 * ceil32(return_data.size)) + 992] = 0
                        mem[(2 * ceil32(return_data.size)) + 1024] = 0
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0xf6c8d8de with:
                                gas gas_remaining wei
                               args arg1
                        mem[(2 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 320
                        require bool((4 * ceil32(return_data.size)) + 1376 <= test266151307())
                        mem[(4 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                        mem[(4 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                        mem[(4 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                        mem[(4 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                        mem[(4 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                        mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                        mem[(4 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                        mem[(4 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                        mem[(4 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                        if not ext_call.return_data[0]:
                            revert with 0, 'no team'
                        mem[(4 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 1380] = arg1
                        mem[(4 * ceil32(return_data.size)) + 1412] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x58597f9b with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 1376
                        require return_data.size >= 32
                        _726 = mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + return_data.size + 1376 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                        _759 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                        mem[(6 * ceil32(return_data.size)) + 1376] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                        require _726 + (32 * _759) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + 1408 len 32 * _759] = mem[(4 * ceil32(return_data.size)) + _726 + 1408 len 32 * _759]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x5ef7c13d with:
                                gas gas_remaining wei
                               args arg1, arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2376 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2376] < _759
                        if mem[(6 * ceil32(return_data.size)) + (32 * mem[_2376]) + 1408] != arg2:
                            revert with 0, 'not gegoId owner'
                        require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                        call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x9d5de6db with:
                             gas gas_remaining wei
                            args arg1, msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x1b6d980d with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2952 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2997 = mem[_2952]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x25e3ee25 with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3144 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3189 = mem[_3144]
                        _3247 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3247] = 30
                        mem[_3247 + 32] = 'SafeMath: subtraction overflow'
                        if _2997 > _3189:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        _3437 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3437] = 30
                        mem[_3437 + 32] = 'SafeMath: subtraction overflow'
                        if _2997 > ext_call.return_data[192]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2997
                        mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 1100 len 20]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x134353b0 with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2997, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x5687967 with:
                             gas gas_remaining wei
                            args arg1, msg.sender, _3189 - _2997
                    else:
                        if block.timestamp < sub_5af92964:
                            mem[(2 * ceil32(return_data.size)) + 740] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                            mem[(2 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0xd7f06e90 with:
                                 gas gas_remaining wei
                                args block.timestamp, 720 * 24 * 3600, 75000 * 10^18
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                            stor5 = 1
                            emit 0xfeebeead: 75000 * 10^18
                            if 2 == stor0:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor0 = 2
                            if not arg2:
                                revert with 0, 'the gegoId error'
                            mem[(4 * ceil32(return_data.size)) + 736] = 0
                            mem[(4 * ceil32(return_data.size)) + 768] = 0
                            mem[(4 * ceil32(return_data.size)) + 800] = 0
                            mem[(4 * ceil32(return_data.size)) + 832] = 0
                            mem[(4 * ceil32(return_data.size)) + 864] = 0
                            mem[(4 * ceil32(return_data.size)) + 896] = 0
                            mem[(4 * ceil32(return_data.size)) + 928] = 0
                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                            mem[(4 * ceil32(return_data.size)) + 992] = 0
                            mem[(4 * ceil32(return_data.size)) + 1024] = 0
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0xf6c8d8de with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 320
                            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                            mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                            mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                            mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                            mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                            mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                            mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                            if not ext_call.return_data[0]:
                                revert with 0, 'no team'
                            mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                            mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x58597f9b with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 1376
                            require return_data.size >= 32
                            _1342 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                            _1374 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                            mem[(7 * ceil32(return_data.size)) + 1376] = _1374
                            require _1342 + (32 * _1374) + 32 <= return_data.size
                            mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1374] = mem[(6 * ceil32(return_data.size)) + _1342 + 1408 len 32 * _1374]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x5ef7c13d with:
                                    gas gas_remaining wei
                                   args arg1, arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2377 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2377] < _1374
                            if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2377]) + 1408] != arg2:
                                revert with 0, 'not gegoId owner'
                            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x9d5de6db with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x1b6d980d with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2953 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2998 = mem[_2953]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x25e3ee25 with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3145 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3190 = mem[_3145]
                            _3248 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3248] = 30
                            mem[_3248 + 32] = 'SafeMath: subtraction overflow'
                            if _2998 > _3190:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _3438 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3438] = 30
                            mem[_3438 + 32] = 'SafeMath: subtraction overflow'
                            if _2998 > ext_call.return_data[192]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2998
                            mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x134353b0 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2998, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x5687967 with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, _3190 - _2998
                        else:
                            mem[(2 * ceil32(return_data.size)) + 740] = sub_5af92964
                            mem[(2 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                            mem[(2 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0xd7f06e90 with:
                                 gas gas_remaining wei
                                args sub_5af92964, 720 * 24 * 3600, 75000 * 10^18
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                            stor5 = 1
                            emit 0xfeebeead: 75000 * 10^18
                            if 2 == stor0:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor0 = 2
                            if not arg2:
                                revert with 0, 'the gegoId error'
                            mem[(4 * ceil32(return_data.size)) + 736] = 0
                            mem[(4 * ceil32(return_data.size)) + 768] = 0
                            mem[(4 * ceil32(return_data.size)) + 800] = 0
                            mem[(4 * ceil32(return_data.size)) + 832] = 0
                            mem[(4 * ceil32(return_data.size)) + 864] = 0
                            mem[(4 * ceil32(return_data.size)) + 896] = 0
                            mem[(4 * ceil32(return_data.size)) + 928] = 0
                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                            mem[(4 * ceil32(return_data.size)) + 992] = 0
                            mem[(4 * ceil32(return_data.size)) + 1024] = 0
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0xf6c8d8de with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 320
                            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                            mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                            mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                            mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                            mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                            mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                            mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                            if not ext_call.return_data[0]:
                                revert with 0, 'no team'
                            mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                            mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x58597f9b with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 1376
                            require return_data.size >= 32
                            _1363 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                            _1400 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                            mem[(7 * ceil32(return_data.size)) + 1376] = _1400
                            require _1363 + (32 * _1400) + 32 <= return_data.size
                            mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1400] = mem[(6 * ceil32(return_data.size)) + _1363 + 1408 len 32 * _1400]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x5ef7c13d with:
                                    gas gas_remaining wei
                                   args arg1, arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2378 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2378] < _1400
                            if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2378]) + 1408] != arg2:
                                revert with 0, 'not gegoId owner'
                            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x9d5de6db with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x1b6d980d with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2954 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2999 = mem[_2954]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x25e3ee25 with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3146 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3191 = mem[_3146]
                            _3249 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3249] = 30
                            mem[_3249 + 32] = 'SafeMath: subtraction overflow'
                            if _2999 > _3191:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _3439 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3439] = 30
                            mem[_3439 + 32] = 'SafeMath: subtraction overflow'
                            if _2999 > ext_call.return_data[192]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _2999
                            mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x134353b0 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _2999, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x5687967 with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, _3191 - _2999
            else:
                mem[(2 * ceil32(return_data.size)) + 740] = arg1
                mem[(2 * ceil32(return_data.size)) + 772] = msg.sender
                if block.timestamp < sub_5af92964:
                    mem[(2 * ceil32(return_data.size)) + 804] = block.timestamp
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x76ae5299 with:
                            gas gas_remaining wei
                           args arg1, msg.sender, block.timestamp
                    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x4b88bf76 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x221b7ec6 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp < sub_e36eb4af:
                        if 2 == stor0:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor0 = 2
                        if not arg2:
                            revert with 0, 'the gegoId error'
                        mem[(4 * ceil32(return_data.size)) + 736] = 0
                        mem[(4 * ceil32(return_data.size)) + 768] = 0
                        mem[(4 * ceil32(return_data.size)) + 800] = 0
                        mem[(4 * ceil32(return_data.size)) + 832] = 0
                        mem[(4 * ceil32(return_data.size)) + 864] = 0
                        mem[(4 * ceil32(return_data.size)) + 896] = 0
                        mem[(4 * ceil32(return_data.size)) + 928] = 0
                        mem[(4 * ceil32(return_data.size)) + 960] = 0
                        mem[(4 * ceil32(return_data.size)) + 992] = 0
                        mem[(4 * ceil32(return_data.size)) + 1024] = 0
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0xf6c8d8de with:
                                gas gas_remaining wei
                               args arg1
                        mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 320
                        require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                        mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                        mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                        mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                        mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                        mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                        mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                        mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                        mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                        mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                        if not ext_call.return_data[0]:
                            revert with 0, 'no team'
                        mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                        mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x58597f9b with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 1376
                        require return_data.size >= 32
                        _1571 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                        _1607 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                        mem[(7 * ceil32(return_data.size)) + 1376] = _1607
                        require _1571 + (32 * _1607) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1607] = mem[(6 * ceil32(return_data.size)) + _1571 + 1408 len 32 * _1607]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x5ef7c13d with:
                                gas gas_remaining wei
                               args arg1, arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2379 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2379] < _1607
                        if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2379]) + 1408] != arg2:
                            revert with 0, 'not gegoId owner'
                        require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                        call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x9d5de6db with:
                             gas gas_remaining wei
                            args arg1, msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x1b6d980d with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2955 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3000 = mem[_2955]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x25e3ee25 with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3147 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3192 = mem[_3147]
                        _3250 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3250] = 30
                        mem[_3250 + 32] = 'SafeMath: subtraction overflow'
                        if _3000 > _3192:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        _3440 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3440] = 30
                        mem[_3440 + 32] = 'SafeMath: subtraction overflow'
                        if _3000 > ext_call.return_data[192]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _3000
                        mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x134353b0 with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _3000, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x5687967 with:
                             gas gas_remaining wei
                            args arg1, msg.sender, _3192 - _3000
                    else:
                        if stor5:
                            if 2 == stor0:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor0 = 2
                            if not arg2:
                                revert with 0, 'the gegoId error'
                            mem[(4 * ceil32(return_data.size)) + 736] = 0
                            mem[(4 * ceil32(return_data.size)) + 768] = 0
                            mem[(4 * ceil32(return_data.size)) + 800] = 0
                            mem[(4 * ceil32(return_data.size)) + 832] = 0
                            mem[(4 * ceil32(return_data.size)) + 864] = 0
                            mem[(4 * ceil32(return_data.size)) + 896] = 0
                            mem[(4 * ceil32(return_data.size)) + 928] = 0
                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                            mem[(4 * ceil32(return_data.size)) + 992] = 0
                            mem[(4 * ceil32(return_data.size)) + 1024] = 0
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0xf6c8d8de with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 320
                            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                            mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                            mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                            mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                            mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                            mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                            mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                            if not ext_call.return_data[0]:
                                revert with 0, 'no team'
                            mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                            mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x58597f9b with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 1376
                            require return_data.size >= 32
                            _1580 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                            _1616 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                            mem[(7 * ceil32(return_data.size)) + 1376] = _1616
                            require _1580 + (32 * _1616) + 32 <= return_data.size
                            mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1616] = mem[(6 * ceil32(return_data.size)) + _1580 + 1408 len 32 * _1616]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x5ef7c13d with:
                                    gas gas_remaining wei
                                   args arg1, arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2380 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2380] < _1616
                            if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2380]) + 1408] != arg2:
                                revert with 0, 'not gegoId owner'
                            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x9d5de6db with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x1b6d980d with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2956 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3001 = mem[_2956]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x25e3ee25 with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3148 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3193 = mem[_3148]
                            _3251 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3251] = 30
                            mem[_3251 + 32] = 'SafeMath: subtraction overflow'
                            if _3001 > _3193:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _3441 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3441] = 30
                            mem[_3441 + 32] = 'SafeMath: subtraction overflow'
                            if _3001 > ext_call.return_data[192]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _3001
                            mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x134353b0 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _3001, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x5687967 with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, _3193 - _3001
                        else:
                            if block.timestamp < sub_5af92964:
                                mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                                mem[(4 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                                mem[(4 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0xd7f06e90 with:
                                     gas gas_remaining wei
                                    args block.timestamp, 720 * 24 * 3600, 75000 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                                stor5 = 1
                                emit 0xfeebeead: 75000 * 10^18
                                if 2 == stor0:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor0 = 2
                                if not arg2:
                                    revert with 0, 'the gegoId error'
                                mem[(6 * ceil32(return_data.size)) + 736] = 0
                                mem[(6 * ceil32(return_data.size)) + 768] = 0
                                mem[(6 * ceil32(return_data.size)) + 800] = 0
                                mem[(6 * ceil32(return_data.size)) + 832] = 0
                                mem[(6 * ceil32(return_data.size)) + 864] = 0
                                mem[(6 * ceil32(return_data.size)) + 896] = 0
                                mem[(6 * ceil32(return_data.size)) + 928] = 0
                                mem[(6 * ceil32(return_data.size)) + 960] = 0
                                mem[(6 * ceil32(return_data.size)) + 992] = 0
                                mem[(6 * ceil32(return_data.size)) + 1024] = 0
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0xf6c8d8de with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 320
                                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                                mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                                mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                                mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                                mem[(7 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                                mem[(7 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                                mem[(7 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                                mem[(7 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'no team'
                                mem[(7 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 1380] = arg1
                                mem[(7 * ceil32(return_data.size)) + 1412] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x58597f9b with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 1376
                                require return_data.size >= 32
                                _2081 = mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + return_data.size + 1376 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                                _2113 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                                mem[(8 * ceil32(return_data.size)) + 1376] = _2113
                                require _2081 + (32 * _2113) + 32 <= return_data.size
                                mem[(8 * ceil32(return_data.size)) + 1408 len 32 * _2113] = mem[(7 * ceil32(return_data.size)) + _2081 + 1408 len 32 * _2113]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x5ef7c13d with:
                                        gas gas_remaining wei
                                       args arg1, arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4793 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4793] < _2113
                                if mem[(8 * ceil32(return_data.size)) + (32 * mem[_4793]) + 1408] != arg2:
                                    revert with 0, 'not gegoId owner'
                                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x9d5de6db with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x1b6d980d with:
                                        gas gas_remaining wei
                                       args arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5017 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5033 = mem[_5017]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x25e3ee25 with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5081 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5097 = mem[_5081]
                                _5113 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5113] = 30
                                mem[_5113 + 32] = 'SafeMath: subtraction overflow'
                                if _5033 > _5097:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                _5177 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5177] = 30
                                mem[_5177 + 32] = 'SafeMath: subtraction overflow'
                                if _5033 > ext_call.return_data[192]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _5033
                                mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 1100 len 20]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x134353b0 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _5033, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x5687967 with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, _5097 - _5033
                            else:
                                mem[(4 * ceil32(return_data.size)) + 740] = sub_5af92964
                                mem[(4 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                                mem[(4 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0xd7f06e90 with:
                                     gas gas_remaining wei
                                    args sub_5af92964, 720 * 24 * 3600, 75000 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                                stor5 = 1
                                emit 0xfeebeead: 75000 * 10^18
                                if 2 == stor0:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor0 = 2
                                if not arg2:
                                    revert with 0, 'the gegoId error'
                                mem[(6 * ceil32(return_data.size)) + 736] = 0
                                mem[(6 * ceil32(return_data.size)) + 768] = 0
                                mem[(6 * ceil32(return_data.size)) + 800] = 0
                                mem[(6 * ceil32(return_data.size)) + 832] = 0
                                mem[(6 * ceil32(return_data.size)) + 864] = 0
                                mem[(6 * ceil32(return_data.size)) + 896] = 0
                                mem[(6 * ceil32(return_data.size)) + 928] = 0
                                mem[(6 * ceil32(return_data.size)) + 960] = 0
                                mem[(6 * ceil32(return_data.size)) + 992] = 0
                                mem[(6 * ceil32(return_data.size)) + 1024] = 0
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0xf6c8d8de with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 320
                                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                                mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                                mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                                mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                                mem[(7 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                                mem[(7 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                                mem[(7 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                                mem[(7 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'no team'
                                mem[(7 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 1380] = arg1
                                mem[(7 * ceil32(return_data.size)) + 1412] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x58597f9b with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 1376
                                require return_data.size >= 32
                                _2100 = mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + return_data.size + 1376 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                                _2126 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                                mem[(8 * ceil32(return_data.size)) + 1376] = _2126
                                require _2100 + (32 * _2126) + 32 <= return_data.size
                                mem[(8 * ceil32(return_data.size)) + 1408 len 32 * _2126] = mem[(7 * ceil32(return_data.size)) + _2100 + 1408 len 32 * _2126]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x5ef7c13d with:
                                        gas gas_remaining wei
                                       args arg1, arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4794 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4794] < _2126
                                if mem[(8 * ceil32(return_data.size)) + (32 * mem[_4794]) + 1408] != arg2:
                                    revert with 0, 'not gegoId owner'
                                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x9d5de6db with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x1b6d980d with:
                                        gas gas_remaining wei
                                       args arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5018 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5034 = mem[_5018]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x25e3ee25 with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5082 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5098 = mem[_5082]
                                _5114 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5114] = 30
                                mem[_5114 + 32] = 'SafeMath: subtraction overflow'
                                if _5034 > _5098:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                _5178 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5178] = 30
                                mem[_5178 + 32] = 'SafeMath: subtraction overflow'
                                if _5034 > ext_call.return_data[192]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _5034
                                mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 1100 len 20]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x134353b0 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _5034, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x5687967 with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, _5098 - _5034
                else:
                    mem[(2 * ceil32(return_data.size)) + 804] = sub_5af92964
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x76ae5299 with:
                            gas gas_remaining wei
                           args arg1, msg.sender, sub_5af92964
                    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x4b88bf76 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x221b7ec6 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp < sub_e36eb4af:
                        if 2 == stor0:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor0 = 2
                        if not arg2:
                            revert with 0, 'the gegoId error'
                        mem[(4 * ceil32(return_data.size)) + 736] = 0
                        mem[(4 * ceil32(return_data.size)) + 768] = 0
                        mem[(4 * ceil32(return_data.size)) + 800] = 0
                        mem[(4 * ceil32(return_data.size)) + 832] = 0
                        mem[(4 * ceil32(return_data.size)) + 864] = 0
                        mem[(4 * ceil32(return_data.size)) + 896] = 0
                        mem[(4 * ceil32(return_data.size)) + 928] = 0
                        mem[(4 * ceil32(return_data.size)) + 960] = 0
                        mem[(4 * ceil32(return_data.size)) + 992] = 0
                        mem[(4 * ceil32(return_data.size)) + 1024] = 0
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0xf6c8d8de with:
                                gas gas_remaining wei
                               args arg1
                        mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 320
                        require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                        mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                        mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                        mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                        mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                        mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                        mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                        mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                        mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                        mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                        if not ext_call.return_data[0]:
                            revert with 0, 'no team'
                        mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                        mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x58597f9b with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 1376
                        require return_data.size >= 32
                        _1596 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                        _1632 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                        mem[(7 * ceil32(return_data.size)) + 1376] = _1632
                        require _1596 + (32 * _1632) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1632] = mem[(6 * ceil32(return_data.size)) + _1596 + 1408 len 32 * _1632]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x5ef7c13d with:
                                gas gas_remaining wei
                               args arg1, arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2381 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2381] < _1632
                        if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2381]) + 1408] != arg2:
                            revert with 0, 'not gegoId owner'
                        require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                        call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x9d5de6db with:
                             gas gas_remaining wei
                            args arg1, msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x1b6d980d with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2957 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3002 = mem[_2957]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x25e3ee25 with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3149 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3194 = mem[_3149]
                        _3253 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3253] = 30
                        mem[_3253 + 32] = 'SafeMath: subtraction overflow'
                        if _3002 > _3194:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        _3443 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3443] = 30
                        mem[_3443 + 32] = 'SafeMath: subtraction overflow'
                        if _3002 > ext_call.return_data[192]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _3002
                        mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x134353b0 with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _3002, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x5687967 with:
                             gas gas_remaining wei
                            args arg1, msg.sender, _3194 - _3002
                    else:
                        if stor5:
                            if 2 == stor0:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor0 = 2
                            if not arg2:
                                revert with 0, 'the gegoId error'
                            mem[(4 * ceil32(return_data.size)) + 736] = 0
                            mem[(4 * ceil32(return_data.size)) + 768] = 0
                            mem[(4 * ceil32(return_data.size)) + 800] = 0
                            mem[(4 * ceil32(return_data.size)) + 832] = 0
                            mem[(4 * ceil32(return_data.size)) + 864] = 0
                            mem[(4 * ceil32(return_data.size)) + 896] = 0
                            mem[(4 * ceil32(return_data.size)) + 928] = 0
                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                            mem[(4 * ceil32(return_data.size)) + 992] = 0
                            mem[(4 * ceil32(return_data.size)) + 1024] = 0
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0xf6c8d8de with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 320
                            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                            mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                            mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                            mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                            mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                            mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                            mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                            if not ext_call.return_data[0]:
                                revert with 0, 'no team'
                            mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                            mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x58597f9b with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 1376
                            require return_data.size >= 32
                            _1608 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                            _1637 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                            mem[(7 * ceil32(return_data.size)) + 1376] = _1637
                            require _1608 + (32 * _1637) + 32 <= return_data.size
                            mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1637] = mem[(6 * ceil32(return_data.size)) + _1608 + 1408 len 32 * _1637]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x5ef7c13d with:
                                    gas gas_remaining wei
                                   args arg1, arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2382 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2382] < _1637
                            if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2382]) + 1408] != arg2:
                                revert with 0, 'not gegoId owner'
                            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x9d5de6db with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x1b6d980d with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2958 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3003 = mem[_2958]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x25e3ee25 with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3150 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3195 = mem[_3150]
                            _3254 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3254] = 30
                            mem[_3254 + 32] = 'SafeMath: subtraction overflow'
                            if _3003 > _3195:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _3444 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3444] = 30
                            mem[_3444 + 32] = 'SafeMath: subtraction overflow'
                            if _3003 > ext_call.return_data[192]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _3003
                            mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x134353b0 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _3003, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x5687967 with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, _3195 - _3003
                        else:
                            if block.timestamp < sub_5af92964:
                                mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                                mem[(4 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                                mem[(4 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0xd7f06e90 with:
                                     gas gas_remaining wei
                                    args block.timestamp, 720 * 24 * 3600, 75000 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                                stor5 = 1
                                emit 0xfeebeead: 75000 * 10^18
                                if 2 == stor0:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor0 = 2
                                if not arg2:
                                    revert with 0, 'the gegoId error'
                                mem[(6 * ceil32(return_data.size)) + 736] = 0
                                mem[(6 * ceil32(return_data.size)) + 768] = 0
                                mem[(6 * ceil32(return_data.size)) + 800] = 0
                                mem[(6 * ceil32(return_data.size)) + 832] = 0
                                mem[(6 * ceil32(return_data.size)) + 864] = 0
                                mem[(6 * ceil32(return_data.size)) + 896] = 0
                                mem[(6 * ceil32(return_data.size)) + 928] = 0
                                mem[(6 * ceil32(return_data.size)) + 960] = 0
                                mem[(6 * ceil32(return_data.size)) + 992] = 0
                                mem[(6 * ceil32(return_data.size)) + 1024] = 0
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0xf6c8d8de with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 320
                                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                                mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                                mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                                mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                                mem[(7 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                                mem[(7 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                                mem[(7 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                                mem[(7 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'no team'
                                mem[(7 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 1380] = arg1
                                mem[(7 * ceil32(return_data.size)) + 1412] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x58597f9b with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 1376
                                require return_data.size >= 32
                                _2101 = mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + return_data.size + 1376 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                                _2127 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                                mem[(8 * ceil32(return_data.size)) + 1376] = _2127
                                require _2101 + (32 * _2127) + 32 <= return_data.size
                                mem[(8 * ceil32(return_data.size)) + 1408 len 32 * _2127] = mem[(7 * ceil32(return_data.size)) + _2101 + 1408 len 32 * _2127]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x5ef7c13d with:
                                        gas gas_remaining wei
                                       args arg1, arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4795 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4795] < _2127
                                if mem[(8 * ceil32(return_data.size)) + (32 * mem[_4795]) + 1408] != arg2:
                                    revert with 0, 'not gegoId owner'
                                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x9d5de6db with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x1b6d980d with:
                                        gas gas_remaining wei
                                       args arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5019 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5035 = mem[_5019]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x25e3ee25 with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5083 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5099 = mem[_5083]
                                _5115 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5115] = 30
                                mem[_5115 + 32] = 'SafeMath: subtraction overflow'
                                if _5035 > _5099:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                _5179 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5179] = 30
                                mem[_5179 + 32] = 'SafeMath: subtraction overflow'
                                if _5035 > ext_call.return_data[192]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _5035
                                mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 1100 len 20]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x134353b0 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _5035, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x5687967 with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, _5099 - _5035
                            else:
                                mem[(4 * ceil32(return_data.size)) + 740] = sub_5af92964
                                mem[(4 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                                mem[(4 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0xd7f06e90 with:
                                     gas gas_remaining wei
                                    args sub_5af92964, 720 * 24 * 3600, 75000 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                                stor5 = 1
                                emit 0xfeebeead: 75000 * 10^18
                                if 2 == stor0:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor0 = 2
                                if not arg2:
                                    revert with 0, 'the gegoId error'
                                mem[(6 * ceil32(return_data.size)) + 736] = 0
                                mem[(6 * ceil32(return_data.size)) + 768] = 0
                                mem[(6 * ceil32(return_data.size)) + 800] = 0
                                mem[(6 * ceil32(return_data.size)) + 832] = 0
                                mem[(6 * ceil32(return_data.size)) + 864] = 0
                                mem[(6 * ceil32(return_data.size)) + 896] = 0
                                mem[(6 * ceil32(return_data.size)) + 928] = 0
                                mem[(6 * ceil32(return_data.size)) + 960] = 0
                                mem[(6 * ceil32(return_data.size)) + 992] = 0
                                mem[(6 * ceil32(return_data.size)) + 1024] = 0
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0xf6c8d8de with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 320
                                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                                mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                                mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                                mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                                mem[(7 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                                mem[(7 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                                mem[(7 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                                mem[(7 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'no team'
                                mem[(7 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 1380] = arg1
                                mem[(7 * ceil32(return_data.size)) + 1412] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x58597f9b with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 1376
                                require return_data.size >= 32
                                _2118 = mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + return_data.size + 1376 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                                _2138 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                                mem[(8 * ceil32(return_data.size)) + 1376] = _2138
                                require _2118 + (32 * _2138) + 32 <= return_data.size
                                mem[(8 * ceil32(return_data.size)) + 1408 len 32 * _2138] = mem[(7 * ceil32(return_data.size)) + _2118 + 1408 len 32 * _2138]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x5ef7c13d with:
                                        gas gas_remaining wei
                                       args arg1, arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4796 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4796] < _2138
                                if mem[(8 * ceil32(return_data.size)) + (32 * mem[_4796]) + 1408] != arg2:
                                    revert with 0, 'not gegoId owner'
                                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x9d5de6db with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x1b6d980d with:
                                        gas gas_remaining wei
                                       args arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5020 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5036 = mem[_5020]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x25e3ee25 with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5084 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5100 = mem[_5084]
                                _5116 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5116] = 30
                                mem[_5116 + 32] = 'SafeMath: subtraction overflow'
                                if _5036 > _5100:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                _5180 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5180] = 30
                                mem[_5180 + 32] = 'SafeMath: subtraction overflow'
                                if _5036 > ext_call.return_data[192]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _5036
                                mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 1100 len 20]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x134353b0 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _5036, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x5687967 with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, _5100 - _5036
        else:
            mem[ceil32(return_data.size) + 672] = sub_5af92964
            mem[(2 * ceil32(return_data.size)) + 736] = 0x134353b000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 740] = arg1
            mem[(2 * ceil32(return_data.size)) + 772] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 804] = mem[ceil32(return_data.size) + 460 len 20]
            mem[(2 * ceil32(return_data.size)) + 836] = ext_call.return_data[64]
            mem[(2 * ceil32(return_data.size)) + 868] = ext_call.return_data[96]
            mem[(2 * ceil32(return_data.size)) + 900] = ext_call.return_data[128]
            mem[(2 * ceil32(return_data.size)) + 932] = ext_call.return_data[160]
            mem[(2 * ceil32(return_data.size)) + 964] = ext_call.return_data[192]
            mem[(2 * ceil32(return_data.size)) + 996] = ext_call.return_data[224]
            mem[(2 * ceil32(return_data.size)) + 1028] = sub_5af92964
            mem[(2 * ceil32(return_data.size)) + 1060] = ext_call.return_data[0]
            require ext_code.size(sub_d6395f95Address)
            call sub_d6395f95Address.0x134353b0 with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[0], mem[ceil32(return_data.size) + 460 len 20], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192], ext_call.return_data[224], sub_5af92964, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                if block.timestamp < sub_e36eb4af:
                    if 2 == stor0:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor0 = 2
                    if not arg2:
                        revert with 0, 'the gegoId error'
                    mem[(2 * ceil32(return_data.size)) + 736] = 0
                    mem[(2 * ceil32(return_data.size)) + 768] = 0
                    mem[(2 * ceil32(return_data.size)) + 800] = 0
                    mem[(2 * ceil32(return_data.size)) + 832] = 0
                    mem[(2 * ceil32(return_data.size)) + 864] = 0
                    mem[(2 * ceil32(return_data.size)) + 896] = 0
                    mem[(2 * ceil32(return_data.size)) + 928] = 0
                    mem[(2 * ceil32(return_data.size)) + 960] = 0
                    mem[(2 * ceil32(return_data.size)) + 992] = 0
                    mem[(2 * ceil32(return_data.size)) + 1024] = 0
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0xf6c8d8de with:
                            gas gas_remaining wei
                           args arg1
                    mem[(2 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 320
                    require bool((4 * ceil32(return_data.size)) + 1376 <= test266151307())
                    mem[(4 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                    mem[(4 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                    mem[(4 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                    mem[(4 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                    mem[(4 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                    mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                    mem[(4 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                    mem[(4 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                    mem[(4 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                    if not ext_call.return_data[0]:
                        revert with 0, 'no team'
                    mem[(4 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 1380] = arg1
                    mem[(4 * ceil32(return_data.size)) + 1412] = msg.sender
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x58597f9b with:
                            gas gas_remaining wei
                           args arg1, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 1376
                    require return_data.size >= 32
                    _736 = mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 1376 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                    _776 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                    mem[(6 * ceil32(return_data.size)) + 1376] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                    require _736 + (32 * _776) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 1408 len 32 * _776] = mem[(4 * ceil32(return_data.size)) + _736 + 1408 len 32 * _776]
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = arg2
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x5ef7c13d with:
                            gas gas_remaining wei
                           args arg1, arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2384 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2384] < _776
                    if mem[(6 * ceil32(return_data.size)) + (32 * mem[_2384]) + 1408] != arg2:
                        revert with 0, 'not gegoId owner'
                    require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                    call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg2
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x9d5de6db with:
                         gas gas_remaining wei
                        args arg1, msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x1b6d980d with:
                            gas gas_remaining wei
                           args arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2960 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3005 = mem[_2960]
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x25e3ee25 with:
                            gas gas_remaining wei
                           args arg1, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3152 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3197 = mem[_3152]
                    _3257 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3257] = 30
                    mem[_3257 + 32] = 'SafeMath: subtraction overflow'
                    if _3005 > _3197:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    _3447 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3447] = 30
                    mem[_3447 + 32] = 'SafeMath: subtraction overflow'
                    if _3005 > ext_call.return_data[192]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _3005
                    mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 1100 len 20]
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x134353b0 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _3005, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x5687967 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, _3197 - _3005
                else:
                    if stor5:
                        if 2 == stor0:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor0 = 2
                        if not arg2:
                            revert with 0, 'the gegoId error'
                        mem[(2 * ceil32(return_data.size)) + 736] = 0
                        mem[(2 * ceil32(return_data.size)) + 768] = 0
                        mem[(2 * ceil32(return_data.size)) + 800] = 0
                        mem[(2 * ceil32(return_data.size)) + 832] = 0
                        mem[(2 * ceil32(return_data.size)) + 864] = 0
                        mem[(2 * ceil32(return_data.size)) + 896] = 0
                        mem[(2 * ceil32(return_data.size)) + 928] = 0
                        mem[(2 * ceil32(return_data.size)) + 960] = 0
                        mem[(2 * ceil32(return_data.size)) + 992] = 0
                        mem[(2 * ceil32(return_data.size)) + 1024] = 0
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0xf6c8d8de with:
                                gas gas_remaining wei
                               args arg1
                        mem[(2 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 320
                        require bool((4 * ceil32(return_data.size)) + 1376 <= test266151307())
                        mem[(4 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                        mem[(4 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                        mem[(4 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                        mem[(4 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                        mem[(4 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                        mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                        mem[(4 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                        mem[(4 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                        mem[(4 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                        if not ext_call.return_data[0]:
                            revert with 0, 'no team'
                        mem[(4 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 1380] = arg1
                        mem[(4 * ceil32(return_data.size)) + 1412] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x58597f9b with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 1376
                        require return_data.size >= 32
                        _754 = mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + return_data.size + 1376 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                        _786 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                        mem[(6 * ceil32(return_data.size)) + 1376] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                        require _754 + (32 * _786) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + 1408 len 32 * _786] = mem[(4 * ceil32(return_data.size)) + _754 + 1408 len 32 * _786]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x5ef7c13d with:
                                gas gas_remaining wei
                               args arg1, arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2385 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2385] < _786
                        if mem[(6 * ceil32(return_data.size)) + (32 * mem[_2385]) + 1408] != arg2:
                            revert with 0, 'not gegoId owner'
                        require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                        call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x9d5de6db with:
                             gas gas_remaining wei
                            args arg1, msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x1b6d980d with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2961 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3006 = mem[_2961]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x25e3ee25 with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3153 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3198 = mem[_3153]
                        _3258 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3258] = 30
                        mem[_3258 + 32] = 'SafeMath: subtraction overflow'
                        if _3006 > _3198:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        _3448 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3448] = 30
                        mem[_3448 + 32] = 'SafeMath: subtraction overflow'
                        if _3006 > ext_call.return_data[192]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _3006
                        mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 1100 len 20]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x134353b0 with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _3006, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x5687967 with:
                             gas gas_remaining wei
                            args arg1, msg.sender, _3198 - _3006
                    else:
                        if block.timestamp < sub_5af92964:
                            mem[(2 * ceil32(return_data.size)) + 740] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                            mem[(2 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0xd7f06e90 with:
                                 gas gas_remaining wei
                                args block.timestamp, 720 * 24 * 3600, 75000 * 10^18
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                            stor5 = 1
                            emit 0xfeebeead: 75000 * 10^18
                            if 2 == stor0:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor0 = 2
                            if not arg2:
                                revert with 0, 'the gegoId error'
                            mem[(4 * ceil32(return_data.size)) + 736] = 0
                            mem[(4 * ceil32(return_data.size)) + 768] = 0
                            mem[(4 * ceil32(return_data.size)) + 800] = 0
                            mem[(4 * ceil32(return_data.size)) + 832] = 0
                            mem[(4 * ceil32(return_data.size)) + 864] = 0
                            mem[(4 * ceil32(return_data.size)) + 896] = 0
                            mem[(4 * ceil32(return_data.size)) + 928] = 0
                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                            mem[(4 * ceil32(return_data.size)) + 992] = 0
                            mem[(4 * ceil32(return_data.size)) + 1024] = 0
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0xf6c8d8de with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 320
                            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                            mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                            mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                            mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                            mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                            mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                            mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                            if not ext_call.return_data[0]:
                                revert with 0, 'no team'
                            mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                            mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x58597f9b with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 1376
                            require return_data.size >= 32
                            _1365 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                            _1404 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                            mem[(7 * ceil32(return_data.size)) + 1376] = _1404
                            require _1365 + (32 * _1404) + 32 <= return_data.size
                            mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1404] = mem[(6 * ceil32(return_data.size)) + _1365 + 1408 len 32 * _1404]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x5ef7c13d with:
                                    gas gas_remaining wei
                                   args arg1, arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2386 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2386] < _1404
                            if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2386]) + 1408] != arg2:
                                revert with 0, 'not gegoId owner'
                            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x9d5de6db with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x1b6d980d with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2962 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3007 = mem[_2962]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x25e3ee25 with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3154 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3199 = mem[_3154]
                            _3259 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3259] = 30
                            mem[_3259 + 32] = 'SafeMath: subtraction overflow'
                            if _3007 > _3199:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _3449 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3449] = 30
                            mem[_3449 + 32] = 'SafeMath: subtraction overflow'
                            if _3007 > ext_call.return_data[192]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _3007
                            mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x134353b0 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _3007, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x5687967 with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, _3199 - _3007
                        else:
                            mem[(2 * ceil32(return_data.size)) + 740] = sub_5af92964
                            mem[(2 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                            mem[(2 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0xd7f06e90 with:
                                 gas gas_remaining wei
                                args sub_5af92964, 720 * 24 * 3600, 75000 * 10^18
                            mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                            stor5 = 1
                            emit 0xfeebeead: 75000 * 10^18
                            if 2 == stor0:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor0 = 2
                            if not arg2:
                                revert with 0, 'the gegoId error'
                            mem[(4 * ceil32(return_data.size)) + 736] = 0
                            mem[(4 * ceil32(return_data.size)) + 768] = 0
                            mem[(4 * ceil32(return_data.size)) + 800] = 0
                            mem[(4 * ceil32(return_data.size)) + 832] = 0
                            mem[(4 * ceil32(return_data.size)) + 864] = 0
                            mem[(4 * ceil32(return_data.size)) + 896] = 0
                            mem[(4 * ceil32(return_data.size)) + 928] = 0
                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                            mem[(4 * ceil32(return_data.size)) + 992] = 0
                            mem[(4 * ceil32(return_data.size)) + 1024] = 0
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0xf6c8d8de with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 320
                            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                            mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                            mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                            mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                            mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                            mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                            mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                            if not ext_call.return_data[0]:
                                revert with 0, 'no team'
                            mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                            mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x58597f9b with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 1376
                            require return_data.size >= 32
                            _1391 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                            _1427 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                            mem[(7 * ceil32(return_data.size)) + 1376] = _1427
                            require _1391 + (32 * _1427) + 32 <= return_data.size
                            mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1427] = mem[(6 * ceil32(return_data.size)) + _1391 + 1408 len 32 * _1427]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x5ef7c13d with:
                                    gas gas_remaining wei
                                   args arg1, arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2387 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2387] < _1427
                            if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2387]) + 1408] != arg2:
                                revert with 0, 'not gegoId owner'
                            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x9d5de6db with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x1b6d980d with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2963 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3008 = mem[_2963]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x25e3ee25 with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3155 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3200 = mem[_3155]
                            _3260 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3260] = 30
                            mem[_3260 + 32] = 'SafeMath: subtraction overflow'
                            if _3008 > _3200:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _3450 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3450] = 30
                            mem[_3450 + 32] = 'SafeMath: subtraction overflow'
                            if _3008 > ext_call.return_data[192]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _3008
                            mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x134353b0 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _3008, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x5687967 with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, _3200 - _3008
            else:
                mem[(2 * ceil32(return_data.size)) + 740] = arg1
                mem[(2 * ceil32(return_data.size)) + 772] = msg.sender
                if block.timestamp < sub_5af92964:
                    mem[(2 * ceil32(return_data.size)) + 804] = block.timestamp
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x76ae5299 with:
                            gas gas_remaining wei
                           args arg1, msg.sender, block.timestamp
                    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x4b88bf76 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x221b7ec6 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp < sub_e36eb4af:
                        if 2 == stor0:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor0 = 2
                        if not arg2:
                            revert with 0, 'the gegoId error'
                        mem[(4 * ceil32(return_data.size)) + 736] = 0
                        mem[(4 * ceil32(return_data.size)) + 768] = 0
                        mem[(4 * ceil32(return_data.size)) + 800] = 0
                        mem[(4 * ceil32(return_data.size)) + 832] = 0
                        mem[(4 * ceil32(return_data.size)) + 864] = 0
                        mem[(4 * ceil32(return_data.size)) + 896] = 0
                        mem[(4 * ceil32(return_data.size)) + 928] = 0
                        mem[(4 * ceil32(return_data.size)) + 960] = 0
                        mem[(4 * ceil32(return_data.size)) + 992] = 0
                        mem[(4 * ceil32(return_data.size)) + 1024] = 0
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0xf6c8d8de with:
                                gas gas_remaining wei
                               args arg1
                        mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 320
                        require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                        mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                        mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                        mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                        mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                        mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                        mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                        mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                        mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                        mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                        if not ext_call.return_data[0]:
                            revert with 0, 'no team'
                        mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                        mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x58597f9b with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 1376
                        require return_data.size >= 32
                        _1599 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                        _1633 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                        mem[(7 * ceil32(return_data.size)) + 1376] = _1633
                        require _1599 + (32 * _1633) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1633] = mem[(6 * ceil32(return_data.size)) + _1599 + 1408 len 32 * _1633]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x5ef7c13d with:
                                gas gas_remaining wei
                               args arg1, arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2388 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2388] < _1633
                        if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2388]) + 1408] != arg2:
                            revert with 0, 'not gegoId owner'
                        require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                        call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x9d5de6db with:
                             gas gas_remaining wei
                            args arg1, msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x1b6d980d with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2964 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3009 = mem[_2964]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x25e3ee25 with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3156 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3201 = mem[_3156]
                        _3261 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3261] = 30
                        mem[_3261 + 32] = 'SafeMath: subtraction overflow'
                        if _3009 > _3201:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        _3451 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3451] = 30
                        mem[_3451 + 32] = 'SafeMath: subtraction overflow'
                        if _3009 > ext_call.return_data[192]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _3009
                        mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x134353b0 with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _3009, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x5687967 with:
                             gas gas_remaining wei
                            args arg1, msg.sender, _3201 - _3009
                    else:
                        if stor5:
                            if 2 == stor0:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor0 = 2
                            if not arg2:
                                revert with 0, 'the gegoId error'
                            mem[(4 * ceil32(return_data.size)) + 736] = 0
                            mem[(4 * ceil32(return_data.size)) + 768] = 0
                            mem[(4 * ceil32(return_data.size)) + 800] = 0
                            mem[(4 * ceil32(return_data.size)) + 832] = 0
                            mem[(4 * ceil32(return_data.size)) + 864] = 0
                            mem[(4 * ceil32(return_data.size)) + 896] = 0
                            mem[(4 * ceil32(return_data.size)) + 928] = 0
                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                            mem[(4 * ceil32(return_data.size)) + 992] = 0
                            mem[(4 * ceil32(return_data.size)) + 1024] = 0
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0xf6c8d8de with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 320
                            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                            mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                            mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                            mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                            mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                            mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                            mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                            if not ext_call.return_data[0]:
                                revert with 0, 'no team'
                            mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                            mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x58597f9b with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 1376
                            require return_data.size >= 32
                            _1609 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                            _1639 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                            mem[(7 * ceil32(return_data.size)) + 1376] = _1639
                            require _1609 + (32 * _1639) + 32 <= return_data.size
                            mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1639] = mem[(6 * ceil32(return_data.size)) + _1609 + 1408 len 32 * _1639]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x5ef7c13d with:
                                    gas gas_remaining wei
                                   args arg1, arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2389 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2389] < _1639
                            if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2389]) + 1408] != arg2:
                                revert with 0, 'not gegoId owner'
                            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x9d5de6db with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x1b6d980d with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2965 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3010 = mem[_2965]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x25e3ee25 with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3157 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3202 = mem[_3157]
                            _3262 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3262] = 30
                            mem[_3262 + 32] = 'SafeMath: subtraction overflow'
                            if _3010 > _3202:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _3452 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3452] = 30
                            mem[_3452 + 32] = 'SafeMath: subtraction overflow'
                            if _3010 > ext_call.return_data[192]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _3010
                            mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x134353b0 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _3010, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x5687967 with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, _3202 - _3010
                        else:
                            if block.timestamp < sub_5af92964:
                                mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                                mem[(4 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                                mem[(4 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0xd7f06e90 with:
                                     gas gas_remaining wei
                                    args block.timestamp, 720 * 24 * 3600, 75000 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                                stor5 = 1
                                emit 0xfeebeead: 75000 * 10^18
                                if 2 == stor0:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor0 = 2
                                if not arg2:
                                    revert with 0, 'the gegoId error'
                                mem[(6 * ceil32(return_data.size)) + 736] = 0
                                mem[(6 * ceil32(return_data.size)) + 768] = 0
                                mem[(6 * ceil32(return_data.size)) + 800] = 0
                                mem[(6 * ceil32(return_data.size)) + 832] = 0
                                mem[(6 * ceil32(return_data.size)) + 864] = 0
                                mem[(6 * ceil32(return_data.size)) + 896] = 0
                                mem[(6 * ceil32(return_data.size)) + 928] = 0
                                mem[(6 * ceil32(return_data.size)) + 960] = 0
                                mem[(6 * ceil32(return_data.size)) + 992] = 0
                                mem[(6 * ceil32(return_data.size)) + 1024] = 0
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0xf6c8d8de with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 320
                                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                                mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                                mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                                mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                                mem[(7 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                                mem[(7 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                                mem[(7 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                                mem[(7 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'no team'
                                mem[(7 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 1380] = arg1
                                mem[(7 * ceil32(return_data.size)) + 1412] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x58597f9b with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 1376
                                require return_data.size >= 32
                                _2104 = mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + return_data.size + 1376 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                                _2129 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                                mem[(8 * ceil32(return_data.size)) + 1376] = _2129
                                require _2104 + (32 * _2129) + 32 <= return_data.size
                                mem[(8 * ceil32(return_data.size)) + 1408 len 32 * _2129] = mem[(7 * ceil32(return_data.size)) + _2104 + 1408 len 32 * _2129]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x5ef7c13d with:
                                        gas gas_remaining wei
                                       args arg1, arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4797 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4797] < _2129
                                if mem[(8 * ceil32(return_data.size)) + (32 * mem[_4797]) + 1408] != arg2:
                                    revert with 0, 'not gegoId owner'
                                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x9d5de6db with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x1b6d980d with:
                                        gas gas_remaining wei
                                       args arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5021 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5037 = mem[_5021]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x25e3ee25 with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5085 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5101 = mem[_5085]
                                _5117 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5117] = 30
                                mem[_5117 + 32] = 'SafeMath: subtraction overflow'
                                if _5037 > _5101:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                _5181 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5181] = 30
                                mem[_5181 + 32] = 'SafeMath: subtraction overflow'
                                if _5037 > ext_call.return_data[192]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _5037
                                mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 1100 len 20]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x134353b0 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _5037, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x5687967 with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, _5101 - _5037
                            else:
                                mem[(4 * ceil32(return_data.size)) + 740] = sub_5af92964
                                mem[(4 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                                mem[(4 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0xd7f06e90 with:
                                     gas gas_remaining wei
                                    args sub_5af92964, 720 * 24 * 3600, 75000 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                                stor5 = 1
                                emit 0xfeebeead: 75000 * 10^18
                                if 2 == stor0:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor0 = 2
                                if not arg2:
                                    revert with 0, 'the gegoId error'
                                mem[(6 * ceil32(return_data.size)) + 736] = 0
                                mem[(6 * ceil32(return_data.size)) + 768] = 0
                                mem[(6 * ceil32(return_data.size)) + 800] = 0
                                mem[(6 * ceil32(return_data.size)) + 832] = 0
                                mem[(6 * ceil32(return_data.size)) + 864] = 0
                                mem[(6 * ceil32(return_data.size)) + 896] = 0
                                mem[(6 * ceil32(return_data.size)) + 928] = 0
                                mem[(6 * ceil32(return_data.size)) + 960] = 0
                                mem[(6 * ceil32(return_data.size)) + 992] = 0
                                mem[(6 * ceil32(return_data.size)) + 1024] = 0
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0xf6c8d8de with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 320
                                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                                mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                                mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                                mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                                mem[(7 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                                mem[(7 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                                mem[(7 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                                mem[(7 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'no team'
                                mem[(7 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 1380] = arg1
                                mem[(7 * ceil32(return_data.size)) + 1412] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x58597f9b with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 1376
                                require return_data.size >= 32
                                _2119 = mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + return_data.size + 1376 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                                _2139 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                                mem[(8 * ceil32(return_data.size)) + 1376] = _2139
                                require _2119 + (32 * _2139) + 32 <= return_data.size
                                mem[(8 * ceil32(return_data.size)) + 1408 len 32 * _2139] = mem[(7 * ceil32(return_data.size)) + _2119 + 1408 len 32 * _2139]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x5ef7c13d with:
                                        gas gas_remaining wei
                                       args arg1, arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4798 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4798] < _2139
                                if mem[(8 * ceil32(return_data.size)) + (32 * mem[_4798]) + 1408] != arg2:
                                    revert with 0, 'not gegoId owner'
                                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x9d5de6db with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x1b6d980d with:
                                        gas gas_remaining wei
                                       args arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5022 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5038 = mem[_5022]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x25e3ee25 with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5086 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5102 = mem[_5086]
                                _5118 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5118] = 30
                                mem[_5118 + 32] = 'SafeMath: subtraction overflow'
                                if _5038 > _5102:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                _5182 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5182] = 30
                                mem[_5182 + 32] = 'SafeMath: subtraction overflow'
                                if _5038 > ext_call.return_data[192]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _5038
                                mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 1100 len 20]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x134353b0 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _5038, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x5687967 with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, _5102 - _5038
                else:
                    mem[(2 * ceil32(return_data.size)) + 804] = sub_5af92964
                    require ext_code.size(sub_d6395f95Address)
                    staticcall sub_d6395f95Address.0x76ae5299 with:
                            gas gas_remaining wei
                           args arg1, msg.sender, sub_5af92964
                    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x4b88bf76 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d6395f95Address)
                    call sub_d6395f95Address.0x221b7ec6 with:
                         gas gas_remaining wei
                        args arg1, msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp < sub_e36eb4af:
                        if 2 == stor0:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor0 = 2
                        if not arg2:
                            revert with 0, 'the gegoId error'
                        mem[(4 * ceil32(return_data.size)) + 736] = 0
                        mem[(4 * ceil32(return_data.size)) + 768] = 0
                        mem[(4 * ceil32(return_data.size)) + 800] = 0
                        mem[(4 * ceil32(return_data.size)) + 832] = 0
                        mem[(4 * ceil32(return_data.size)) + 864] = 0
                        mem[(4 * ceil32(return_data.size)) + 896] = 0
                        mem[(4 * ceil32(return_data.size)) + 928] = 0
                        mem[(4 * ceil32(return_data.size)) + 960] = 0
                        mem[(4 * ceil32(return_data.size)) + 992] = 0
                        mem[(4 * ceil32(return_data.size)) + 1024] = 0
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0xf6c8d8de with:
                                gas gas_remaining wei
                               args arg1
                        mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 320
                        require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                        mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                        mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                        mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                        mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                        mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                        mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                        mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                        mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                        mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                        if not ext_call.return_data[0]:
                            revert with 0, 'no team'
                        mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                        mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x58597f9b with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 1376
                        require return_data.size >= 32
                        _1621 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                        _1653 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                        mem[(7 * ceil32(return_data.size)) + 1376] = _1653
                        require _1621 + (32 * _1653) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1653] = mem[(6 * ceil32(return_data.size)) + _1621 + 1408 len 32 * _1653]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x5ef7c13d with:
                                gas gas_remaining wei
                               args arg1, arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2391 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2391] < _1653
                        if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2391]) + 1408] != arg2:
                            revert with 0, 'not gegoId owner'
                        require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                        call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x9d5de6db with:
                             gas gas_remaining wei
                            args arg1, msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x1b6d980d with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2967 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3012 = mem[_2967]
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(sub_d6395f95Address)
                        staticcall sub_d6395f95Address.0x25e3ee25 with:
                                gas gas_remaining wei
                               args arg1, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3159 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3204 = mem[_3159]
                        _3265 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3265] = 30
                        mem[_3265 + 32] = 'SafeMath: subtraction overflow'
                        if _3012 > _3204:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        _3455 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3455] = 30
                        mem[_3455 + 32] = 'SafeMath: subtraction overflow'
                        if _3012 > ext_call.return_data[192]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _3012
                        mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x134353b0 with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _3012, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d6395f95Address)
                        call sub_d6395f95Address.0x5687967 with:
                             gas gas_remaining wei
                            args arg1, msg.sender, _3204 - _3012
                    else:
                        if stor5:
                            if 2 == stor0:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor0 = 2
                            if not arg2:
                                revert with 0, 'the gegoId error'
                            mem[(4 * ceil32(return_data.size)) + 736] = 0
                            mem[(4 * ceil32(return_data.size)) + 768] = 0
                            mem[(4 * ceil32(return_data.size)) + 800] = 0
                            mem[(4 * ceil32(return_data.size)) + 832] = 0
                            mem[(4 * ceil32(return_data.size)) + 864] = 0
                            mem[(4 * ceil32(return_data.size)) + 896] = 0
                            mem[(4 * ceil32(return_data.size)) + 928] = 0
                            mem[(4 * ceil32(return_data.size)) + 960] = 0
                            mem[(4 * ceil32(return_data.size)) + 992] = 0
                            mem[(4 * ceil32(return_data.size)) + 1024] = 0
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0xf6c8d8de with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(4 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 320
                            require bool((6 * ceil32(return_data.size)) + 1376 <= test266151307())
                            mem[(6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                            mem[(6 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                            mem[(6 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                            mem[(6 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                            mem[(6 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                            mem[(6 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                            mem[(6 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                            if not ext_call.return_data[0]:
                                revert with 0, 'no team'
                            mem[(6 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 1380] = arg1
                            mem[(6 * ceil32(return_data.size)) + 1412] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x58597f9b with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 1376
                            require return_data.size >= 32
                            _1634 = mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 1376 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                            _1659 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                            mem[(7 * ceil32(return_data.size)) + 1376] = _1659
                            require _1634 + (32 * _1659) + 32 <= return_data.size
                            mem[(7 * ceil32(return_data.size)) + 1408 len 32 * _1659] = mem[(6 * ceil32(return_data.size)) + _1634 + 1408 len 32 * _1659]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x5ef7c13d with:
                                    gas gas_remaining wei
                                   args arg1, arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2392 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2392] < _1659
                            if mem[(7 * ceil32(return_data.size)) + (32 * mem[_2392]) + 1408] != arg2:
                                revert with 0, 'not gegoId owner'
                            require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                            call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x9d5de6db with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x1b6d980d with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2968 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3013 = mem[_2968]
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_d6395f95Address)
                            staticcall sub_d6395f95Address.0x25e3ee25 with:
                                    gas gas_remaining wei
                                   args arg1, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3160 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3205 = mem[_3160]
                            _3266 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3266] = 30
                            mem[_3266 + 32] = 'SafeMath: subtraction overflow'
                            if _3013 > _3205:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            _3456 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3456] = 30
                            mem[_3456 + 32] = 'SafeMath: subtraction overflow'
                            if _3013 > ext_call.return_data[192]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _3013
                            mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68] = mem[(6 * ceil32(return_data.size)) + 1100 len 20]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x134353b0 with:
                                 gas gas_remaining wei
                                args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _3013, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_d6395f95Address)
                            call sub_d6395f95Address.0x5687967 with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, _3205 - _3013
                        else:
                            if block.timestamp < sub_5af92964:
                                mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
                                mem[(4 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                                mem[(4 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0xd7f06e90 with:
                                     gas gas_remaining wei
                                    args block.timestamp, 720 * 24 * 3600, 75000 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                                stor5 = 1
                                emit 0xfeebeead: 75000 * 10^18
                                if 2 == stor0:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor0 = 2
                                if not arg2:
                                    revert with 0, 'the gegoId error'
                                mem[(6 * ceil32(return_data.size)) + 736] = 0
                                mem[(6 * ceil32(return_data.size)) + 768] = 0
                                mem[(6 * ceil32(return_data.size)) + 800] = 0
                                mem[(6 * ceil32(return_data.size)) + 832] = 0
                                mem[(6 * ceil32(return_data.size)) + 864] = 0
                                mem[(6 * ceil32(return_data.size)) + 896] = 0
                                mem[(6 * ceil32(return_data.size)) + 928] = 0
                                mem[(6 * ceil32(return_data.size)) + 960] = 0
                                mem[(6 * ceil32(return_data.size)) + 992] = 0
                                mem[(6 * ceil32(return_data.size)) + 1024] = 0
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0xf6c8d8de with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 320
                                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                                mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                                mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                                mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                                mem[(7 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                                mem[(7 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                                mem[(7 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                                mem[(7 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'no team'
                                mem[(7 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 1380] = arg1
                                mem[(7 * ceil32(return_data.size)) + 1412] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x58597f9b with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 1376
                                require return_data.size >= 32
                                _2120 = mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + return_data.size + 1376 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                                _2140 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                                mem[(8 * ceil32(return_data.size)) + 1376] = _2140
                                require _2120 + (32 * _2140) + 32 <= return_data.size
                                mem[(8 * ceil32(return_data.size)) + 1408 len 32 * _2140] = mem[(7 * ceil32(return_data.size)) + _2120 + 1408 len 32 * _2140]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x5ef7c13d with:
                                        gas gas_remaining wei
                                       args arg1, arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4799 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4799] < _2140
                                if mem[(8 * ceil32(return_data.size)) + (32 * mem[_4799]) + 1408] != arg2:
                                    revert with 0, 'not gegoId owner'
                                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x9d5de6db with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x1b6d980d with:
                                        gas gas_remaining wei
                                       args arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5023 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5039 = mem[_5023]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x25e3ee25 with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5087 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5103 = mem[_5087]
                                _5119 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5119] = 30
                                mem[_5119 + 32] = 'SafeMath: subtraction overflow'
                                if _5039 > _5103:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                _5183 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5183] = 30
                                mem[_5183 + 32] = 'SafeMath: subtraction overflow'
                                if _5039 > ext_call.return_data[192]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _5039
                                mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 1100 len 20]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x134353b0 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _5039, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x5687967 with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, _5103 - _5039
                            else:
                                mem[(4 * ceil32(return_data.size)) + 740] = sub_5af92964
                                mem[(4 * ceil32(return_data.size)) + 772] = 720 * 24 * 3600
                                mem[(4 * ceil32(return_data.size)) + 804] = 75000 * 10^18
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0xd7f06e90 with:
                                     gas gas_remaining wei
                                    args sub_5af92964, 720 * 24 * 3600, 75000 * 10^18
                                mem[(4 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + (720 * 24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_5af92964 = block.timestamp + (720 * 24 * 3600)
                                stor5 = 1
                                emit 0xfeebeead: 75000 * 10^18
                                if 2 == stor0:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor0 = 2
                                if not arg2:
                                    revert with 0, 'the gegoId error'
                                mem[(6 * ceil32(return_data.size)) + 736] = 0
                                mem[(6 * ceil32(return_data.size)) + 768] = 0
                                mem[(6 * ceil32(return_data.size)) + 800] = 0
                                mem[(6 * ceil32(return_data.size)) + 832] = 0
                                mem[(6 * ceil32(return_data.size)) + 864] = 0
                                mem[(6 * ceil32(return_data.size)) + 896] = 0
                                mem[(6 * ceil32(return_data.size)) + 928] = 0
                                mem[(6 * ceil32(return_data.size)) + 960] = 0
                                mem[(6 * ceil32(return_data.size)) + 992] = 0
                                mem[(6 * ceil32(return_data.size)) + 1024] = 0
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0xf6c8d8de with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[(6 * ceil32(return_data.size)) + 1056 len 320] = ext_call.return_data[0 len 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 320
                                require bool((7 * ceil32(return_data.size)) + 1376 <= test266151307())
                                mem[(7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                                mem[(7 * ceil32(return_data.size)) + 1088] = ext_call.return_data[44 len 20]
                                mem[(7 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                                mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                                mem[(7 * ceil32(return_data.size)) + 1184] = ext_call.return_data[128]
                                mem[(7 * ceil32(return_data.size)) + 1216] = ext_call.return_data[160]
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192]
                                mem[(7 * ceil32(return_data.size)) + 1280] = ext_call.return_data[224]
                                mem[(7 * ceil32(return_data.size)) + 1312] = ext_call.return_data[256]
                                mem[(7 * ceil32(return_data.size)) + 1344] = ext_call.return_data[288]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'no team'
                                mem[(7 * ceil32(return_data.size)) + 1376] = 0x58597f9b00000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 1380] = arg1
                                mem[(7 * ceil32(return_data.size)) + 1412] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x58597f9b with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(7 * ceil32(return_data.size)) + 1376 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 1376
                                require return_data.size >= 32
                                _2131 = mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32
                                require mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                                require (7 * ceil32(return_data.size)) + return_data.size + 1376 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1407
                                _2152 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]
                                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376] <= test266151307()
                                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408 <= test266151307()
                                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 1376 len 4], Mask(224, 32, arg1) >> 32 + 1376]) + 1408
                                mem[(8 * ceil32(return_data.size)) + 1376] = _2152
                                require _2131 + (32 * _2152) + 32 <= return_data.size
                                mem[(8 * ceil32(return_data.size)) + 1408 len 32 * _2152] = mem[(7 * ceil32(return_data.size)) + _2131 + 1408 len 32 * _2152]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x5ef7c13d with:
                                        gas gas_remaining wei
                                       args arg1, arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4800 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4800] < _2152
                                if mem[(8 * ceil32(return_data.size)) + (32 * mem[_4800]) + 1408] != arg2:
                                    revert with 0, 'not gegoId owner'
                                require ext_code.size(0x36633b70eac3d1c98a20a6ecef6033d1077372f5)
                                call 0x36633b70eac3d1c98a20a6ecef6033d1077372f5.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x9d5de6db with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = arg2
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x1b6d980d with:
                                        gas gas_remaining wei
                                       args arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5024 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5040 = mem[_5024]
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(sub_d6395f95Address)
                                staticcall sub_d6395f95Address.0x25e3ee25 with:
                                        gas gas_remaining wei
                                       args arg1, msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5088 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5104 = mem[_5088]
                                _5120 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5120] = 30
                                mem[_5120 + 32] = 'SafeMath: subtraction overflow'
                                if _5040 > _5104:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                _5184 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5184] = 30
                                mem[_5184 + 32] = 'SafeMath: subtraction overflow'
                                if _5040 > ext_call.return_data[192]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                mem[(7 * ceil32(return_data.size)) + 1248] = ext_call.return_data[192] - _5040
                                mem[mem[64]] = 0x134353b000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68] = mem[(7 * ceil32(return_data.size)) + 1100 len 20]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x134353b0 with:
                                     gas gas_remaining wei
                                    args arg1, ext_call.return_data[0], mem[mem[64] + 68], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], ext_call.return_data[160], ext_call.return_data[192] - _5040, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_d6395f95Address)
                                call sub_d6395f95Address.0x5687967 with:
                                     gas gas_remaining wei
                                    args arg1, msg.sender, _5104 - _5040
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xc266b7b5: msg.sender, arg1, arg2, 22
    stor0 = 1
}



}
