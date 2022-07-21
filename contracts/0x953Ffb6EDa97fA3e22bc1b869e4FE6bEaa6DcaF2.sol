contract main {




// =====================  Runtime code  =====================


#
#  - sub_b119ef87(?)
#
const VERSION = '', 0


function _fallback() payable {
    revert
}

function sub_76aa26bd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[192] = ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 224 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[128] = ext_call.return_data[50 len 14]
    mem[(4 * ceil32(return_data.size)) + 256] = mem[146 len 14]
    mem[(4 * ceil32(return_data.size)) + 288] = mem[172 len 20]
    mem[(4 * ceil32(return_data.size)) + 320] = mem[204 len 20]
    return 0, mem[(4 * ceil32(return_data.size)) + 256 len 96]
}

function sub_02e247c4(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg2))
    staticcall address(arg2).fund() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ballot() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).votingEscrow() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).tokenUnderlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    staticcall address(arg2).quoteAssetAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allShareBalanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg3), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg3), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).shareAllowance(uint256 arg1, address arg2, address arg3) with:
            gas gas_remaining wei
           args 0, address(arg3), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).shareAllowance(uint256 arg1, address arg2, address arg3) with:
            gas gas_remaining wei
           args 1, address(arg3), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).shareAllowance(uint256 arg1, address arg2, address arg3) with:
            gas gas_remaining wei
           args 2, address(arg3), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg3), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return eth.balance(arg3), 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function sub_22c715cf(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[512 len 512] = call.data[calldata.size len 512]
    mem[480] = 512
    mem[320] = 352
    require ext_code.size(address(arg1))
    staticcall address(arg1).currentCreatingUnderlying() with:
            gas gas_remaining wei
    mem[1024] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).currentRedeemingShares() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 1024] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).redemptionFeeRate() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 1024] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).splitFeeRate() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 1024] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[224] = ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).mergeFeeRate() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 1024] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[256] = ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).minCreationUnderlying() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 1024] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[288] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 1024] = 0
    mem[(8 * ceil32(return_data.size)) + 1056] = 0
    mem[(8 * ceil32(return_data.size)) + 1088] = 0
    mem[(8 * ceil32(return_data.size)) + 1120] = 0
    mem[(8 * ceil32(return_data.size)) + 1152] = 0
    mem[(8 * ceil32(return_data.size)) + 1184] = 0
    require ext_code.size(address(arg1))
    call address(arg1).creationRedemptionOf(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    mem[(8 * ceil32(return_data.size)) + 1216 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require bool((10 * ceil32(return_data.size)) + 1408 <= test266151307())
    mem[(10 * ceil32(return_data.size)) + 1216] = ext_call.return_data[0]
    mem[(10 * ceil32(return_data.size)) + 1248] = ext_call.return_data[32]
    mem[(10 * ceil32(return_data.size)) + 1280] = ext_call.return_data[64]
    mem[(10 * ceil32(return_data.size)) + 1312] = ext_call.return_data[96]
    mem[(10 * ceil32(return_data.size)) + 1344] = ext_call.return_data[128]
    mem[(10 * ceil32(return_data.size)) + 1376] = ext_call.return_data[160]
    mem[352] = ext_call.return_data[32]
    mem[384] = ext_call.return_data[64]
    mem[416] = ext_call.return_data[96]
    mem[448] = ext_call.return_data[128]
    if arg3 < 2:
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[128],
               call.data[calldata.size len 512]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xd89c5caf with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 1408] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).currentDay() with:
            gas gas_remaining wei
    mem[(11 * ceil32(return_data.size)) + 1408] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (12 * ceil32(return_data.size)) + 1408
    require return_data.size >= 32
    idx = 0
    while idx < 16:
        mem[mem[64] + 36] = ext_call.return_data[0] + (-86400 * idx) - (24 * 3600)
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x50c47f46 with:
                gas gas_remaining wei
               args address(arg2), ext_call.return_data[0] + (-86400 * idx) - (24 * 3600)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _95 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require idx < 16
        mem[(32 * idx) + mem[mem[320] + 128]] = mem[_95]
        idx = idx + 1
        continue 
    mem[mem[64]] = mem[96]
    mem[mem[64] + 32] = mem[128]
    mem[mem[64] + 64] = mem[160]
    mem[mem[64] + 96] = mem[192]
    mem[mem[64] + 128] = mem[224]
    mem[mem[64] + 160] = mem[256]
    mem[mem[64] + 192] = mem[288]
    _89 = mem[320]
    mem[mem[64] + 224] = mem[mem[320]]
    mem[mem[64] + 256] = mem[_89 + 32]
    mem[mem[64] + 288] = mem[_89 + 64]
    mem[mem[64] + 320] = mem[_89 + 96]
    mem[mem[64] + 352 len 512] = mem[mem[_89 + 128] len 512]
    return memory
      from mem[64]
       len 864
}

function sub_da102fbd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).totalSupply(uint256 arg1) with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).totalSupply(uint256 arg1) with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).totalSupply(uint256 arg1) with:
            gas gas_remaining wei
           args 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70f5df19 with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xc8562f72 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).minBidAmount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).minAskAmount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).availableBalanceOf(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 0, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).availableBalanceOf(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 1, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).availableBalanceOf(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 2, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).lockedBalanceOf(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 0, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).lockedBalanceOf(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 1, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).lockedBalanceOf(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 2, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70f5df19 with:
            gas gas_remaining wei
           args 2 * ext_call.return_data[0], 2 * ext_call.return_data[0], 2 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xc7c97c7 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x1fcbf091 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool((20 * ceil32(return_data.size)) + 992 <= test266151307())
    require return_data.size - 32 >= 64
    require bool((20 * ceil32(return_data.size)) + 1056 <= test266151307())
    require ext_code.size(address(arg1))
    staticcall address(arg1).isMaker(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).claimableRewards(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[64],
           bool(ext_call.return_data[0]),
           ext_call.return_data[0]
}

function sub_0079efbc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).fund() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).isFundActive(uint256 arg1) with:
            gas gas_remaining wei
           args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).isPrimaryMarketActive(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).isExchangeActive(uint256 arg1) with:
            gas gas_remaining wei
           args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).fundActivityStartTime() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).exchangeActivityStartTime() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).currentDay() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).dailyProtocolFeeRate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getTotalShares() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getRebalanceSize() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).historicalInterestRate(uint256 arg1) with:
            gas gas_remaining wei
           args ((168 * 24 * 3600 * ext_call.return_data[0] + (130 * 3600) / 168 * 24 * 3600) + (14 * 3600))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getRebalanceSize() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not ext_call.return_data[0]:
        staticcall address(ext_call.return_data[0]).getRebalance(uint256 arg1) with:
                gas gas_remaining wei
               args 0
    else:
        staticcall address(ext_call.return_data[0]).getRebalance(uint256 arg1) with:
                gas gas_remaining wei
               args (ext_call.return_data[0] - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require bool((16 * ceil32(return_data.size)) + 896 <= test266151307())
    require ext_code.size(address(arg2))
    call address(arg2).refreshBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).chessController() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getFundRelativeWeight(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if arg3 >= 2:
        staticcall address(ext_call.return_data[0]).0xb40494e5 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x2af4b0c0 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0]), 
               bool(ext_call.return_data[0]),
               bool(ext_call.return_data[0]),
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               (168 * 24 * 3600 * ext_call.return_data[0] + (130 * 3600) / 168 * 24 * 3600) + (14 * 3600),
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[128],
               ext_call.return_data[0],
               ext_call.return_data[0]
    staticcall address(ext_call.return_data[0]).tokenUnderlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0]), 
           bool(ext_call.return_data[0]),
           bool(ext_call.return_data[0]),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           (168 * 24 * 3600 * ext_call.return_data[0] + (130 * 3600) / 168 * 24 * 3600) + (14 * 3600),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[0],
           0
}

function sub_1442a3e7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[160] = 192
    require ext_code.size(address(arg1))
    staticcall address(arg1).chessController() with:
            gas gas_remaining wei
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x81d8e87c with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 288] = 0x673a2a1f00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPools() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _14 = mem[(2 * ceil32(return_data.size)) + 288]
    require mem[(2 * ceil32(return_data.size)) + 288] <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 288 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 319
    _15 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288]) + 320 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288]) + 320
    mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288]
    require return_data.size >= _14 + (32 * _15) + 32
    s = (2 * ceil32(return_data.size)) + _14 + 320
    t = (4 * ceil32(return_data.size)) + 320
    idx = 0
    while idx < _15:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[96] = (4 * ceil32(return_data.size)) + 288
    require _15 <= test266151307()
    _172 = mem[64]
    if not _15:
        mem[128] = mem[64]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).userLockedBalances(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64] + (32 * _15) + 32 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[224] = ext_call.return_data[32]
        mem[192] = ext_call.return_data[0]
        _183 = mem[(4 * ceil32(return_data.size)) + 288]
        require mem[(4 * ceil32(return_data.size)) + 288] <= test266151307()
        mem[_172 + (32 * _15) + ceil32(return_data.size) + 32] = mem[(4 * ceil32(return_data.size)) + 288]
        mem[64] = _172 + (32 * _15) + ceil32(return_data.size) + (32 * _183) + 64
        if _183:
            mem[_172 + (32 * _15) + ceil32(return_data.size) + 64 len 32 * _183] = call.data[calldata.size len 32 * _183]
            mem[256] = _172 + (32 * _15) + ceil32(return_data.size) + 32
            _326 = mem[(4 * ceil32(return_data.size)) + 288]
            idx = 0
            while idx < _326:
                require idx < mem[mem[96]]
                _343 = mem[(32 * idx) + mem[96] + 32]
                mem[mem[64] + 4] = mem[(32 * idx) + mem[96] + 44 len 20]
                mem[mem[64] + 36] = block.timestamp
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x2bff5d97 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], block.timestamp
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _364 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[mem[128]]
                mem[(32 * idx) + mem[128] + 32] = mem[_364]
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(_343)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x15bbc6ce with:
                        gas gas_remaining wei
                       args address(arg2), address(_343)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[mem[mem[160] + 64]]
                mem[(32 * idx) + mem[mem[160] + 64] + 32] = mem[_424]
                _326 = mem[mem[96]]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 96
            _355 = mem[mem[96]]
            mem[mem[64] + 128] = mem[mem[96]]
            idx = 0
            s = mem[64] + 160
            t = mem[96] + 32
            while idx < _355:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = (32 * _355) + 128
            _460 = mem[mem[128]]
            mem[mem[64] + (32 * _355) + 160] = mem[mem[128]]
            mem[mem[64] + (32 * _355) + 192 len 32 * _460] = mem[mem[128] + 32 len 32 * _460]
            mem[mem[64] + 96] = (32 * _355) + (32 * _460) + 160
            mem[mem[64] + (32 * _355) + (32 * _460) + 192] = mem[mem[160]]
            mem[mem[64] + (32 * _355) + (32 * _460) + 224] = mem[mem[160] + 32]
            _506 = mem[mem[160] + 64]
            mem[mem[64] + (32 * _355) + (32 * _460) + 256] = 96
            _516 = mem[_506]
            mem[mem[64] + (32 * _355) + (32 * _460) + 288] = mem[_506]
            s = 0
            s = _506 + 32
            t = mem[64] + (32 * _355) + (32 * _460) + 320
            while _326 < _516:
                mem[t] = mem[s]
                s = _326 + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[256] = _172 + (32 * _15) + ceil32(return_data.size) + 32
            _324 = mem[(4 * ceil32(return_data.size)) + 288]
            idx = 0
            while idx < _324:
                require idx < mem[mem[96]]
                _340 = mem[(32 * idx) + mem[96] + 32]
                mem[mem[64] + 4] = mem[(32 * idx) + mem[96] + 44 len 20]
                mem[mem[64] + 36] = block.timestamp
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x2bff5d97 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], block.timestamp
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _363 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[mem[128]]
                mem[(32 * idx) + mem[128] + 32] = mem[_363]
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(_340)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x15bbc6ce with:
                        gas gas_remaining wei
                       args address(arg2), address(_340)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[mem[mem[160] + 64]]
                mem[(32 * idx) + mem[mem[160] + 64] + 32] = mem[_423]
                _324 = mem[mem[96]]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 96
            _352 = mem[mem[96]]
            mem[mem[64] + 128] = mem[mem[96]]
            idx = 0
            s = mem[64] + 160
            t = mem[96] + 32
            while idx < _352:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = (32 * _352) + 128
            _459 = mem[mem[128]]
            mem[mem[64] + (32 * _352) + 160] = mem[mem[128]]
            mem[mem[64] + (32 * _352) + 192 len 32 * _459] = mem[mem[128] + 32 len 32 * _459]
            var76001 = _459
            _499 = mem[160]
            mem[mem[64] + 96] = (32 * _352) + (32 * _459) + 160
            mem[mem[64] + (32 * _352) + (32 * _459) + 192] = mem[mem[160]]
            mem[mem[64] + (32 * _352) + (32 * _459) + 224] = mem[_499 + 32]
            _502 = mem[_499 + 64]
            mem[mem[64] + (32 * _352) + (32 * _459) + 256] = 96
            _515 = mem[_502]
            mem[mem[64] + (32 * _352) + (32 * _459) + 288] = mem[_502]
            s = 0
            s = _502 + 32
            t = mem[64] + (32 * _352) + (32 * _459) + 320
            while _324 < _515:
                mem[t] = mem[s]
                s = _324 + 1
                s = s + 32
                t = t + 32
                continue 
    else:
        mem[mem[64] + 32 len 32 * _15] = call.data[calldata.size len 32 * _15]
        mem[128] = mem[64]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).userLockedBalances(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64] + (32 * _15) + 32 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[224] = ext_call.return_data[32]
        mem[192] = ext_call.return_data[0]
        _189 = mem[(4 * ceil32(return_data.size)) + 288]
        require mem[(4 * ceil32(return_data.size)) + 288] <= test266151307()
        mem[_172 + (32 * _15) + ceil32(return_data.size) + 32] = mem[(4 * ceil32(return_data.size)) + 288]
        mem[64] = _172 + (32 * _15) + ceil32(return_data.size) + (32 * _189) + 64
        if not _189:
            mem[256] = _172 + (32 * _15) + ceil32(return_data.size) + 32
            _328 = mem[(4 * ceil32(return_data.size)) + 288]
            idx = 0
            while idx < _328:
                require idx < mem[mem[96]]
                _346 = mem[(32 * idx) + mem[96] + 32]
                mem[mem[64] + 4] = mem[(32 * idx) + mem[96] + 44 len 20]
                mem[mem[64] + 36] = block.timestamp
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x2bff5d97 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], block.timestamp
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _365 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[mem[128]]
                mem[(32 * idx) + mem[128] + 32] = mem[_365]
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(_346)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x15bbc6ce with:
                        gas gas_remaining wei
                       args address(arg2), address(_346)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _425 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[mem[mem[160] + 64]]
                mem[(32 * idx) + mem[mem[160] + 64] + 32] = mem[_425]
                _328 = mem[mem[96]]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 96
            _358 = mem[mem[96]]
            mem[mem[64] + 128] = mem[mem[96]]
            idx = 0
            s = mem[64] + 160
            t = mem[96] + 32
            while idx < _358:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = (32 * _358) + 128
            _461 = mem[mem[128]]
            mem[mem[64] + (32 * _358) + 160] = mem[mem[128]]
            mem[mem[64] + (32 * _358) + 192 len 32 * _461] = mem[mem[128] + 32 len 32 * _461]
            _507 = mem[160]
            mem[mem[64] + 96] = (32 * _358) + (32 * _461) + 160
            mem[mem[64] + (32 * _358) + (32 * _461) + 192] = mem[mem[160]]
            mem[mem[64] + (32 * _358) + (32 * _461) + 224] = mem[_507 + 32]
            _510 = mem[_507 + 64]
            mem[mem[64] + (32 * _358) + (32 * _461) + 256] = 96
            _517 = mem[_510]
            mem[mem[64] + (32 * _358) + (32 * _461) + 288] = mem[_510]
            s = 0
            s = _510 + 32
            t = mem[64] + (32 * _358) + (32 * _461) + 320
            while _328 < _517:
                mem[t] = mem[s]
                s = _328 + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[_172 + (32 * _15) + ceil32(return_data.size) + 64 len 32 * _189] = call.data[calldata.size len 32 * _189]
            mem[256] = _172 + (32 * _15) + ceil32(return_data.size) + 32
            _330 = mem[(4 * ceil32(return_data.size)) + 288]
            idx = 0
            while idx < _330:
                require idx < mem[mem[96]]
                _349 = mem[(32 * idx) + mem[96] + 32]
                mem[mem[64] + 4] = mem[(32 * idx) + mem[96] + 44 len 20]
                mem[mem[64] + 36] = block.timestamp
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x2bff5d97 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], block.timestamp
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _366 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[mem[128]]
                mem[(32 * idx) + mem[128] + 32] = mem[_366]
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(_349)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x15bbc6ce with:
                        gas gas_remaining wei
                       args address(arg2), address(_349)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _426 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[mem[mem[160] + 64]]
                mem[(32 * idx) + mem[mem[160] + 64] + 32] = mem[_426]
                _330 = mem[mem[96]]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 96
            _361 = mem[mem[96]]
            mem[mem[64] + 128] = mem[mem[96]]
            idx = 0
            s = mem[64] + 160
            t = mem[96] + 32
            while idx < _361:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = (32 * _361) + 128
            _462 = mem[mem[128]]
            mem[mem[64] + (32 * _361) + 160] = mem[mem[128]]
            mem[mem[64] + (32 * _361) + 192 len 32 * _462] = mem[mem[128] + 32 len 32 * _462]
            mem[mem[64] + 96] = (32 * _361) + (32 * _462) + 160
            mem[mem[64] + (32 * _361) + (32 * _462) + 192] = mem[mem[160]]
            mem[mem[64] + (32 * _361) + (32 * _462) + 224] = mem[mem[160] + 32]
            _514 = mem[mem[160] + 64]
            mem[mem[64] + (32 * _361) + (32 * _462) + 256] = 96
            _518 = mem[_514]
            mem[mem[64] + (32 * _361) + (32 * _462) + 288] = mem[_514]
            s = 0
            s = _514 + 32
            t = mem[64] + (32 * _361) + (32 * _462) + 320
            while _330 < _518:
                mem[t] = mem[s]
                s = _330 + 1
                s = s + 32
                t = t + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_f948c9f9(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[448] = 0
    mem[480] = 0
    mem[192] = 320
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[224] = 512
    mem[672] = 96
    mem[704] = 96
    mem[768] = 0
    mem[800] = 0
    mem[832] = 96
    mem[736] = 768
    mem[256] = 672
    mem[1024] = 0
    mem[1056] = 0
    mem[1088] = 0
    mem[1120] = 0
    mem[864] = 1024
    mem[896] = 0
    mem[928] = 0
    mem[960] = 0
    mem[992] = 0
    mem[288] = 864
    require ext_code.size(address(arg1))
    staticcall address(arg1).fund() with:
            gas gas_remaining wei
    mem[1152] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ballot() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 1152] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).votingEscrow() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).chessSchedule() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if block.timestamp + (168 * 24 * 3600) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 1156] = block.timestamp
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getRate(uint256 arg1) with:
            gas gas_remaining wei
           args block.timestamp
    mem[(8 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = ext_call.return_data[0]
    mem[(10 * ceil32(return_data.size)) + 1156] = block.timestamp + (168 * 24 * 3600)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getRate(uint256 arg1) with:
            gas gas_remaining wei
           args (block.timestamp + (168 * 24 * 3600))
    mem[(10 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalLocked() with:
            gas gas_remaining wei
    mem[(11 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[320] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    mem[(12 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[352] = ext_call.return_data[0]
    mem[(13 * ceil32(return_data.size)) + 1156] = (168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) + (14 * 3600)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalSupplyAtTimestamp(uint256 arg1) with:
            gas gas_remaining wei
           args ((168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) + (14 * 3600))
    mem[(13 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[384] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getLockedBalance(address arg1) with:
            gas gas_remaining wei
           args address(arg3)
    mem[(14 * ceil32(return_data.size)) + 1152 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((15 * ceil32(return_data.size)) + 1216 <= test266151307())
    mem[(15 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
    mem[(15 * ceil32(return_data.size)) + 1184] = ext_call.return_data[32]
    mem[416] = (15 * ceil32(return_data.size)) + 1152
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ballot() with:
            gas gas_remaining wei
    mem[(15 * ceil32(return_data.size)) + 1216] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(16 * ceil32(return_data.size)) + 1220] = (168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) + (14 * 3600)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalSupplyAtTimestamp(uint256 arg1) with:
            gas gas_remaining wei
           args ((168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) + (14 * 3600))
    mem[(16 * ceil32(return_data.size)) + 1216] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[512] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ballot() with:
            gas gas_remaining wei
    mem[(18 * ceil32(return_data.size)) + 1216] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReceipt(address arg1) with:
            gas gas_remaining wei
           args address(arg3)
    mem[(19 * ceil32(return_data.size)) + 1216 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool((20 * ceil32(return_data.size)) + 1312 <= test266151307())
    mem[(20 * ceil32(return_data.size)) + 1216] = ext_call.return_data[0]
    mem[(20 * ceil32(return_data.size)) + 1248] = ext_call.return_data[32]
    mem[(20 * ceil32(return_data.size)) + 1280] = ext_call.return_data[64]
    mem[544] = (20 * ceil32(return_data.size)) + 1216
    mem[(20 * ceil32(return_data.size)) + 1312] = 96
    mem[(20 * ceil32(return_data.size)) + 1344] = 96
    mem[(20 * ceil32(return_data.size)) + 1408] = 0
    mem[(20 * ceil32(return_data.size)) + 1440] = 0
    mem[(20 * ceil32(return_data.size)) + 1472] = 96
    mem[(20 * ceil32(return_data.size)) + 1376] = (20 * ceil32(return_data.size)) + 1408
    require ext_code.size(address(arg1))
    staticcall address(arg1).chessController() with:
            gas gas_remaining wei
    mem[(20 * ceil32(return_data.size)) + 1504] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x81d8e87c with:
            gas gas_remaining wei
    mem[(21 * ceil32(return_data.size)) + 1504] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(22 * ceil32(return_data.size)) + 1504] = 0x673a2a1f00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPools() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(22 * ceil32(return_data.size)) + 1504 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (23 * ceil32(return_data.size)) + 1504
    require return_data.size >= 32
    _100 = mem[(22 * ceil32(return_data.size)) + 1504]
    require mem[(22 * ceil32(return_data.size)) + 1504] <= test266151307()
    require (22 * ceil32(return_data.size)) + return_data.size + 1504 > (22 * ceil32(return_data.size)) + mem[(22 * ceil32(return_data.size)) + 1504] + 1535
    _101 = mem[(22 * ceil32(return_data.size)) + mem[(22 * ceil32(return_data.size)) + 1504] + 1504]
    require mem[(22 * ceil32(return_data.size)) + mem[(22 * ceil32(return_data.size)) + 1504] + 1504] <= test266151307()
    require (32 * mem[(22 * ceil32(return_data.size)) + mem[(22 * ceil32(return_data.size)) + 1504] + 1504]) + 32 >= 0 and (23 * ceil32(return_data.size)) + (32 * mem[(22 * ceil32(return_data.size)) + mem[(22 * ceil32(return_data.size)) + 1504] + 1504]) + 1536 <= test266151307()
    mem[64] = (23 * ceil32(return_data.size)) + (32 * mem[(22 * ceil32(return_data.size)) + mem[(22 * ceil32(return_data.size)) + 1504] + 1504]) + 1536
    mem[(23 * ceil32(return_data.size)) + 1504] = _101
    require return_data.size >= _100 + (32 * _101) + 32
    s = (22 * ceil32(return_data.size)) + _100 + 1536
    t = (23 * ceil32(return_data.size)) + 1536
    idx = 0
    while idx < _101:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[(20 * ceil32(return_data.size)) + 1312] = (23 * ceil32(return_data.size)) + 1504
    require _101 <= test266151307()
    _686 = mem[64]
    if not _101:
        mem[(20 * ceil32(return_data.size)) + 1344] = mem[64]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).userLockedBalances(address arg1) with:
                gas gas_remaining wei
               args address(arg3)
        mem[mem[64] + (32 * _101) + 32 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[(20 * ceil32(return_data.size)) + 1440] = ext_call.return_data[32]
        mem[(20 * ceil32(return_data.size)) + 1408] = ext_call.return_data[0]
        require _101 <= test266151307()
        mem[mem[64] + (32 * _101) + ceil32(return_data.size) + 32] = _101
        mem[64] = mem[64] + (64 * _101) + ceil32(return_data.size) + 64
        if not _101:
            mem[(20 * ceil32(return_data.size)) + 1472] = _686 + (32 * _101) + ceil32(return_data.size) + 32
            idx = 0
            while idx < _101:
                require idx < mem[mem[(20 * ceil32(return_data.size)) + 1312]]
                _1281 = mem[(32 * idx) + mem[(20 * ceil32(return_data.size)) + 1312] + 32]
                mem[mem[64] + 4] = mem[(32 * idx) + mem[(20 * ceil32(return_data.size)) + 1312] + 44 len 20]
                mem[mem[64] + 36] = block.timestamp
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x2bff5d97 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], block.timestamp
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1313 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[mem[(20 * ceil32(return_data.size)) + 1344]]
                mem[(32 * idx) + mem[(20 * ceil32(return_data.size)) + 1344] + 32] = mem[_1313]
                mem[mem[64] + 4] = address(arg3)
                mem[mem[64] + 36] = address(_1281)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x15bbc6ce with:
                        gas gas_remaining wei
                       args address(arg3), address(_1281)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1430 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[mem[mem[(20 * ceil32(return_data.size)) + 1376] + 64]]
                mem[(32 * idx) + mem[mem[(20 * ceil32(return_data.size)) + 1376] + 64] + 32] = mem[_1430]
                idx = idx + 1
                continue 
            mem[256] = (20 * ceil32(return_data.size)) + 1312
            if not address(arg2):
                _1293 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[96]
                mem[mem[64] + 64] = mem[128]
                mem[mem[64] + 96] = mem[160]
                mem[mem[64] + 128] = mem[mem[192]]
                mem[mem[64] + 160] = mem[mem[192] + 32]
                mem[mem[64] + 192] = mem[mem[192] + 64]
                _1312 = mem[mem[192] + 96]
                mem[mem[64] + 224] = mem[mem[mem[192] + 96]]
                mem[mem[64] + 256] = mem[_1312 + 32]
                mem[mem[64] + 288] = mem[mem[224]]
                _1362 = mem[mem[224] + 32]
                mem[mem[64] + 320] = mem[mem[mem[224] + 32]]
                mem[mem[64] + 352] = mem[_1362 + 32]
                mem[mem[64] + 384] = mem[_1362 + 64]
                mem[mem[64] + 416] = 672
                _1421 = mem[(20 * ceil32(return_data.size)) + 1312]
                mem[mem[64] + 704] = 96
                _1422 = mem[_1421]
                mem[mem[64] + 800] = mem[_1421]
                idx = 0
                s = mem[64] + 832
                t = _1421 + 32
                while idx < _1422:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _1821 = mem[(20 * ceil32(return_data.size)) + 1344]
                mem[_1293 + 736] = (32 * _1422) + 128
                _1837 = mem[_1821]
                mem[_1293 + (32 * _1422) + 832] = mem[_1821]
                mem[_1293 + (32 * _1422) + 864 len 32 * _1837] = mem[_1821 + 32 len 32 * _1837]
                var246001 = _1837
                _1997 = mem[(20 * ceil32(return_data.size)) + 1376]
                mem[_1293 + 768] = (32 * _1422) + (32 * _1837) + 160
                mem[_1293 + (32 * _1422) + (32 * _1837) + 864] = mem[_1997]
                mem[_1293 + (32 * _1422) + (32 * _1837) + 896] = mem[_1997 + 32]
                _2000 = mem[_1997 + 64]
                mem[_1293 + (32 * _1422) + (32 * _1837) + 928] = 96
                _2029 = mem[_2000]
                mem[_1293 + (32 * _1422) + (32 * _1837) + 960] = mem[_2000]
                mem[_1293 + (32 * _1422) + (32 * _1837) + 992 len 32 * _2029] = mem[_2000 + 32 len 32 * _2029]
                _2149 = mem[mem[288]]
                mem[_1293 + 448] = mem[mem[mem[288]]]
                mem[_1293 + 480] = mem[_2149 + 32]
                mem[_1293 + 512] = mem[_2149 + 64]
                mem[_1293 + 544] = mem[_2149 + 96]
                mem[_1293 + 576] = mem[mem[288] + 32]
                mem[_1293 + 608] = mem[mem[288] + 64]
                mem[_1293 + 640] = mem[mem[288] + 96]
                mem[_1293 + 672] = mem[mem[288] + 128]
                return memory
                  from mem[64]
                   len _1293 + (32 * _1422) + (32 * _1837) + (32 * _2029) + -mem[64] + 992
            mem[mem[64] + 4] = address(arg3)
            require ext_code.size(address(arg2))
            call address(arg2).userCheckpoint(address arg1) with:
                 gas gas_remaining wei
                args address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1343 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[mem[288]]] = mem[_1343]
            mem[mem[64] + 4] = address(arg3)
            require ext_code.size(address(arg2))
            staticcall address(arg2).userLastBalances(address arg1) with:
                    gas gas_remaining wei
                   args address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1429 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[mem[288]] + 32] = mem[_1429]
            require ext_code.size(address(arg2))
            staticcall address(arg2).userLockedBalances(address arg1) with:
                    gas gas_remaining wei
                   args address(arg3)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1493 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1513 = mem[_1493]
            _1523 = mem[mem[288]]
            mem[mem[mem[288]] + 96] = mem[_1493 + 32]
            mem[_1523 + 64] = _1513
            mem[mem[64] + 4] = (168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) - (154 * 3600)
            require ext_code.size(address(arg2))
            staticcall address(arg2).rewardsPerWeek(uint256 arg1) with:
                    gas gas_remaining wei
                   args ((168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) - (154 * 3600))
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1553 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[288] + 32] = mem[_1553]
            mem[mem[64] + 4] = (168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) - (154 * 3600)
            require ext_code.size(address(arg2))
            staticcall address(arg2).veSupplyPerWeek(uint256 arg1) with:
                    gas gas_remaining wei
                   args ((168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) - (154 * 3600))
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[288] + 64] = mem[_1605]
            mem[mem[64] + 4] = (168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) + (14 * 3600)
            require ext_code.size(address(arg2))
            staticcall address(arg2).totalSupplyAtTimestamp(uint256 arg1) with:
                    gas gas_remaining wei
                   args ((168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) + (14 * 3600))
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1625 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[288] + 96] = mem[_1625]
            require ext_code.size(address(arg2))
            staticcall address(arg2).adminFeeRate() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1645 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[288] + 128] = mem[_1645]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            mem[mem[64] + 64] = mem[128]
            mem[mem[64] + 96] = mem[160]
            mem[mem[64] + 128] = mem[mem[192]]
            mem[mem[64] + 160] = mem[mem[192] + 32]
            mem[mem[64] + 192] = mem[mem[192] + 64]
            _1668 = mem[mem[192] + 96]
            mem[mem[64] + 224] = mem[mem[mem[192] + 96]]
            mem[mem[64] + 256] = mem[_1668 + 32]
            mem[mem[64] + 288] = mem[mem[224]]
            _1706 = mem[mem[224] + 32]
            mem[mem[64] + 320] = mem[mem[mem[224] + 32]]
            mem[mem[64] + 352] = mem[_1706 + 32]
            mem[mem[64] + 384] = mem[_1706 + 64]
            mem[mem[64] + 416] = 672
            _1729 = mem[(20 * ceil32(return_data.size)) + 1312]
            mem[mem[64] + 704] = 96
            _1730 = mem[_1729]
            mem[mem[64] + 800] = mem[_1729]
            idx = 0
            s = mem[64] + 832
            t = _1729 + 32
            while idx < _1730:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _1823 = mem[(20 * ceil32(return_data.size)) + 1344]
            mem[mem[64] + 736] = (32 * _1730) + 128
            _1838 = mem[_1823]
            mem[mem[64] + (32 * _1730) + 832] = mem[_1823]
            mem[mem[64] + (32 * _1730) + 864 len 32 * _1838] = mem[_1823 + 32 len 32 * _1838]
            var294001 = _1838
            _2001 = mem[(20 * ceil32(return_data.size)) + 1376]
            mem[mem[64] + 768] = (32 * _1730) + (32 * _1838) + 160
            mem[mem[64] + (32 * _1730) + (32 * _1838) + 864] = mem[_2001]
            mem[mem[64] + (32 * _1730) + (32 * _1838) + 896] = mem[_2001 + 32]
            _2004 = mem[_2001 + 64]
            mem[mem[64] + (32 * _1730) + (32 * _1838) + 928] = 96
            _2030 = mem[_2004]
            mem[mem[64] + (32 * _1730) + (32 * _1838) + 960] = mem[_2004]
            mem[mem[64] + (32 * _1730) + (32 * _1838) + 992 len 32 * _2030] = mem[_2004 + 32 len 32 * _2030]
            _2150 = mem[mem[288]]
            mem[mem[64] + 448] = mem[mem[mem[288]]]
            mem[mem[64] + 480] = mem[_2150 + 32]
            mem[mem[64] + 512] = mem[_2150 + 64]
            mem[mem[64] + 544] = mem[_2150 + 96]
            mem[mem[64] + 576] = mem[mem[288] + 32]
            mem[mem[64] + 608] = mem[mem[288] + 64]
            mem[mem[64] + 640] = mem[mem[288] + 96]
            mem[mem[64] + 672] = mem[mem[288] + 128]
            return 32, mem[mem[64] + 32 len 384], 
                   672,
                   mem[mem[64] + 448 len 256],
                   96,
                   (32 * _1730) + 128,
                   (32 * _1730) + (32 * _1838) + 160,
                   mem[mem[64] + 800 len (32 * _1730) + (32 * _1838) + 128],
                   96,
                   mem[mem[64] + (32 * _1730) + (32 * _1838) + 960 len (32 * _2030) + 32]
        mem[_686 + (32 * _101) + ceil32(return_data.size) + 64 len 32 * _101] = call.data[calldata.size len 32 * _101]
        mem[(20 * ceil32(return_data.size)) + 1472] = _686 + (32 * _101) + ceil32(return_data.size) + 32
        idx = 0
        while idx < _101:
            require idx < mem[mem[(20 * ceil32(return_data.size)) + 1312]]
            _1283 = mem[(32 * idx) + mem[(20 * ceil32(return_data.size)) + 1312] + 32]
            mem[mem[64] + 4] = mem[(32 * idx) + mem[(20 * ceil32(return_data.size)) + 1312] + 44 len 20]
            mem[mem[64] + 36] = block.timestamp
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x2bff5d97 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], block.timestamp
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1322 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[mem[(20 * ceil32(return_data.size)) + 1344]]
            mem[(32 * idx) + mem[(20 * ceil32(return_data.size)) + 1344] + 32] = mem[_1322]
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = address(_1283)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x15bbc6ce with:
                    gas gas_remaining wei
                   args address(arg3), address(_1283)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1432 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[mem[mem[(20 * ceil32(return_data.size)) + 1376] + 64]]
            mem[(32 * idx) + mem[mem[(20 * ceil32(return_data.size)) + 1376] + 64] + 32] = mem[_1432]
            idx = idx + 1
            continue 
        mem[256] = (20 * ceil32(return_data.size)) + 1312
        if not address(arg2):
            _1295 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            mem[mem[64] + 64] = mem[128]
            mem[mem[64] + 96] = mem[160]
            mem[mem[64] + 128] = mem[mem[192]]
            mem[mem[64] + 160] = mem[mem[192] + 32]
            mem[mem[64] + 192] = mem[mem[192] + 64]
            _1321 = mem[mem[192] + 96]
            mem[mem[64] + 224] = mem[mem[mem[192] + 96]]
            mem[mem[64] + 256] = mem[_1321 + 32]
            mem[mem[64] + 288] = mem[mem[224]]
            _1367 = mem[mem[224] + 32]
            mem[mem[64] + 320] = mem[mem[mem[224] + 32]]
            mem[mem[64] + 352] = mem[_1367 + 32]
            mem[mem[64] + 384] = mem[_1367 + 64]
            mem[mem[64] + 416] = 672
            _1423 = mem[(20 * ceil32(return_data.size)) + 1312]
            mem[mem[64] + 704] = 96
            _1424 = mem[_1423]
            mem[mem[64] + 800] = mem[_1423]
            idx = 0
            s = mem[64] + 832
            t = _1423 + 32
            while idx < _1424:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _1825 = mem[(20 * ceil32(return_data.size)) + 1344]
            mem[_1295 + 736] = (32 * _1424) + 128
            _1839 = mem[_1825]
            mem[_1295 + (32 * _1424) + 832] = mem[_1825]
            mem[_1295 + (32 * _1424) + 864 len 32 * _1839] = mem[_1825 + 32 len 32 * _1839]
            _2005 = mem[(20 * ceil32(return_data.size)) + 1376]
            mem[_1295 + 768] = (32 * _1424) + (32 * _1839) + 160
            mem[_1295 + (32 * _1424) + (32 * _1839) + 864] = mem[_2005]
            mem[_1295 + (32 * _1424) + (32 * _1839) + 896] = mem[_2005 + 32]
            _2008 = mem[_2005 + 64]
            mem[_1295 + (32 * _1424) + (32 * _1839) + 928] = 96
            _2031 = mem[_2008]
            mem[_1295 + (32 * _1424) + (32 * _1839) + 960] = mem[_2008]
            mem[_1295 + (32 * _1424) + (32 * _1839) + 992 len 32 * _2031] = mem[_2008 + 32 len 32 * _2031]
            _2151 = mem[mem[288]]
            mem[_1295 + 448] = mem[mem[mem[288]]]
            mem[_1295 + 480] = mem[_2151 + 32]
            mem[_1295 + 512] = mem[_2151 + 64]
            mem[_1295 + 544] = mem[_2151 + 96]
            mem[_1295 + 576] = mem[mem[288] + 32]
            mem[_1295 + 608] = mem[mem[288] + 64]
            mem[_1295 + 640] = mem[mem[288] + 96]
            mem[_1295 + 672] = mem[mem[288] + 128]
            return memory
              from mem[64]
               len _1295 + (32 * _1424) + (32 * _1839) + (32 * _2031) + -mem[64] + 992
        mem[mem[64] + 4] = address(arg3)
        require ext_code.size(address(arg2))
        call address(arg2).userCheckpoint(address arg1) with:
             gas gas_remaining wei
            args address(arg3)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1346 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[mem[288]]] = mem[_1346]
        mem[mem[64] + 4] = address(arg3)
        require ext_code.size(address(arg2))
        staticcall address(arg2).userLastBalances(address arg1) with:
                gas gas_remaining wei
               args address(arg3)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1431 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[mem[288]] + 32] = mem[_1431]
        require ext_code.size(address(arg2))
        staticcall address(arg2).userLockedBalances(address arg1) with:
                gas gas_remaining wei
               args address(arg3)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1498 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1515 = mem[_1498]
        _1527 = mem[mem[288]]
        mem[mem[mem[288]] + 96] = mem[_1498 + 32]
        mem[_1527 + 64] = _1515
        mem[mem[64] + 4] = (168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) - (154 * 3600)
        require ext_code.size(address(arg2))
        staticcall address(arg2).rewardsPerWeek(uint256 arg1) with:
                gas gas_remaining wei
               args ((168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) - (154 * 3600))
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1558 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[288] + 32] = mem[_1558]
        mem[mem[64] + 4] = (168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) - (154 * 3600)
        require ext_code.size(address(arg2))
        staticcall address(arg2).veSupplyPerWeek(uint256 arg1) with:
                gas gas_remaining wei
               args ((168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) - (154 * 3600))
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1606 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[288] + 64] = mem[_1606]
        mem[mem[64] + 4] = (168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) + (14 * 3600)
        require ext_code.size(address(arg2))
        staticcall address(arg2).totalSupplyAtTimestamp(uint256 arg1) with:
                gas gas_remaining wei
               args ((168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) + (14 * 3600))
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1626 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[288] + 96] = mem[_1626]
        require ext_code.size(address(arg2))
        staticcall address(arg2).adminFeeRate() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1646 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[288] + 128] = mem[_1646]
        _1658 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        mem[mem[64] + 64] = mem[128]
        mem[mem[64] + 96] = mem[160]
        mem[mem[64] + 128] = mem[mem[192]]
        mem[mem[64] + 160] = mem[mem[192] + 32]
        mem[mem[64] + 192] = mem[mem[192] + 64]
        _1676 = mem[mem[192] + 96]
        mem[mem[64] + 224] = mem[mem[mem[192] + 96]]
        mem[mem[64] + 256] = mem[_1676 + 32]
        mem[mem[64] + 288] = mem[mem[224]]
        _1708 = mem[mem[224] + 32]
        mem[mem[64] + 320] = mem[mem[mem[224] + 32]]
        mem[mem[64] + 352] = mem[_1708 + 32]
        mem[mem[64] + 384] = mem[_1708 + 64]
        mem[mem[64] + 416] = 672
        _1731 = mem[(20 * ceil32(return_data.size)) + 1312]
        mem[mem[64] + 704] = 96
        _1732 = mem[_1731]
        mem[mem[64] + 800] = mem[_1731]
        idx = 0
        s = mem[64] + 832
        t = _1731 + 32
        while idx < _1732:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _1827 = mem[(20 * ceil32(return_data.size)) + 1344]
        mem[_1658 + 736] = (32 * _1732) + 128
        _1840 = mem[_1827]
        mem[_1658 + (32 * _1732) + 832] = mem[_1827]
        mem[_1658 + (32 * _1732) + 864 len 32 * _1840] = mem[_1827 + 32 len 32 * _1840]
        _2009 = mem[(20 * ceil32(return_data.size)) + 1376]
        mem[_1658 + 768] = (32 * _1732) + (32 * _1840) + 160
        mem[_1658 + (32 * _1732) + (32 * _1840) + 864] = mem[_2009]
        mem[_1658 + (32 * _1732) + (32 * _1840) + 896] = mem[_2009 + 32]
        _2012 = mem[_2009 + 64]
        mem[_1658 + (32 * _1732) + (32 * _1840) + 928] = 96
        _2032 = mem[_2012]
        mem[_1658 + (32 * _1732) + (32 * _1840) + 960] = mem[_2012]
        mem[_1658 + (32 * _1732) + (32 * _1840) + 992 len 32 * _2032] = mem[_2012 + 32 len 32 * _2032]
        _2152 = mem[mem[288]]
        mem[_1658 + 448] = mem[mem[mem[288]]]
        mem[_1658 + 480] = mem[_2152 + 32]
        mem[_1658 + 512] = mem[_2152 + 64]
        mem[_1658 + 544] = mem[_2152 + 96]
        mem[_1658 + 576] = mem[mem[288] + 32]
        mem[_1658 + 608] = mem[mem[288] + 64]
        mem[_1658 + 640] = mem[mem[288] + 96]
        mem[_1658 + 672] = mem[mem[288] + 128]
        return memory
          from mem[64]
           len _1658 + (32 * _1732) + (32 * _1840) + (32 * _2032) + -mem[64] + 992
    mem[mem[64] + 32 len 32 * _101] = call.data[calldata.size len 32 * _101]
    mem[(20 * ceil32(return_data.size)) + 1344] = mem[64]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).userLockedBalances(address arg1) with:
            gas gas_remaining wei
           args address(arg3)
    mem[mem[64] + (32 * _101) + 32 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(20 * ceil32(return_data.size)) + 1440] = ext_call.return_data[32]
    mem[(20 * ceil32(return_data.size)) + 1408] = ext_call.return_data[0]
    require _101 <= test266151307()
    mem[mem[64] + (32 * _101) + ceil32(return_data.size) + 32] = _101
    mem[64] = mem[64] + (64 * _101) + ceil32(return_data.size) + 64
    if not _101:
        mem[(20 * ceil32(return_data.size)) + 1472] = _686 + (32 * _101) + ceil32(return_data.size) + 32
        idx = 0
        while idx < _101:
            require idx < mem[mem[(20 * ceil32(return_data.size)) + 1312]]
            _1285 = mem[(32 * idx) + mem[(20 * ceil32(return_data.size)) + 1312] + 32]
            mem[mem[64] + 4] = mem[(32 * idx) + mem[(20 * ceil32(return_data.size)) + 1312] + 44 len 20]
            mem[mem[64] + 36] = block.timestamp
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x2bff5d97 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], block.timestamp
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1331 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[mem[(20 * ceil32(return_data.size)) + 1344]]
            mem[(32 * idx) + mem[(20 * ceil32(return_data.size)) + 1344] + 32] = mem[_1331]
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = address(_1285)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x15bbc6ce with:
                    gas gas_remaining wei
                   args address(arg3), address(_1285)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1434 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[mem[mem[(20 * ceil32(return_data.size)) + 1376] + 64]]
            mem[(32 * idx) + mem[mem[(20 * ceil32(return_data.size)) + 1376] + 64] + 32] = mem[_1434]
            idx = idx + 1
            continue 
        mem[256] = (20 * ceil32(return_data.size)) + 1312
        if not address(arg2):
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            mem[mem[64] + 64] = mem[128]
            mem[mem[64] + 96] = mem[160]
            mem[mem[64] + 128] = mem[mem[192]]
            mem[mem[64] + 160] = mem[mem[192] + 32]
            mem[mem[64] + 192] = mem[mem[192] + 64]
            _1330 = mem[mem[192] + 96]
            mem[mem[64] + 224] = mem[mem[mem[192] + 96]]
            mem[mem[64] + 256] = mem[_1330 + 32]
            mem[mem[64] + 288] = mem[mem[224]]
            _1372 = mem[mem[224] + 32]
            mem[mem[64] + 320] = mem[mem[mem[224] + 32]]
            mem[mem[64] + 352] = mem[_1372 + 32]
            mem[mem[64] + 384] = mem[_1372 + 64]
            mem[mem[64] + 416] = 672
            _1425 = mem[(20 * ceil32(return_data.size)) + 1312]
            mem[mem[64] + 704] = 96
            _1426 = mem[_1425]
            mem[mem[64] + 800] = mem[_1425]
            idx = 0
            s = mem[64] + 832
            t = _1425 + 32
            while idx < _1426:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _1829 = mem[(20 * ceil32(return_data.size)) + 1344]
            mem[mem[64] + 736] = (32 * _1426) + 128
            _1841 = mem[_1829]
            mem[mem[64] + (32 * _1426) + 832] = mem[_1829]
            mem[mem[64] + (32 * _1426) + 864 len 32 * _1841] = mem[_1829 + 32 len 32 * _1841]
            _2013 = mem[(20 * ceil32(return_data.size)) + 1376]
            mem[mem[64] + 768] = (32 * _1426) + (32 * _1841) + 160
            mem[mem[64] + (32 * _1426) + (32 * _1841) + 864] = mem[_2013]
            mem[mem[64] + (32 * _1426) + (32 * _1841) + 896] = mem[_2013 + 32]
            _2016 = mem[_2013 + 64]
            mem[mem[64] + (32 * _1426) + (32 * _1841) + 928] = 96
            _2033 = mem[_2016]
            mem[mem[64] + (32 * _1426) + (32 * _1841) + 960] = mem[_2016]
            mem[mem[64] + (32 * _1426) + (32 * _1841) + 992 len 32 * _2033] = mem[_2016 + 32 len 32 * _2033]
            _2153 = mem[mem[288]]
            mem[mem[64] + 448] = mem[mem[mem[288]]]
            mem[mem[64] + 480] = mem[_2153 + 32]
            mem[mem[64] + 512] = mem[_2153 + 64]
            mem[mem[64] + 544] = mem[_2153 + 96]
            mem[mem[64] + 576] = mem[mem[288] + 32]
            mem[mem[64] + 608] = mem[mem[288] + 64]
            mem[mem[64] + 640] = mem[mem[288] + 96]
            mem[mem[64] + 672] = mem[mem[288] + 128]
            return 32, mem[mem[64] + 32 len 384], 
                   672,
                   mem[mem[64] + 448 len 256],
                   96,
                   (32 * _1426) + 128,
                   (32 * _1426) + (32 * _1841) + 160,
                   mem[mem[64] + 800 len (32 * _1426) + (32 * _1841) + 128],
                   96,
                   mem[mem[64] + (32 * _1426) + (32 * _1841) + 960 len (32 * _2033) + 32]
        mem[mem[64] + 4] = address(arg3)
        require ext_code.size(address(arg2))
        call address(arg2).userCheckpoint(address arg1) with:
             gas gas_remaining wei
            args address(arg3)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1349 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[mem[288]]] = mem[_1349]
        mem[mem[64] + 4] = address(arg3)
        require ext_code.size(address(arg2))
        staticcall address(arg2).userLastBalances(address arg1) with:
                gas gas_remaining wei
               args address(arg3)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1433 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[mem[288]] + 32] = mem[_1433]
        require ext_code.size(address(arg2))
        staticcall address(arg2).userLockedBalances(address arg1) with:
                gas gas_remaining wei
               args address(arg3)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1503 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1517 = mem[_1503]
        _1531 = mem[mem[288]]
        mem[mem[mem[288]] + 96] = mem[_1503 + 32]
        mem[_1531 + 64] = _1517
        mem[mem[64] + 4] = (168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) - (154 * 3600)
        require ext_code.size(address(arg2))
        staticcall address(arg2).rewardsPerWeek(uint256 arg1) with:
                gas gas_remaining wei
               args ((168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) - (154 * 3600))
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1563 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[288] + 32] = mem[_1563]
        mem[mem[64] + 4] = (168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) - (154 * 3600)
        require ext_code.size(address(arg2))
        staticcall address(arg2).veSupplyPerWeek(uint256 arg1) with:
                gas gas_remaining wei
               args ((168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) - (154 * 3600))
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1607 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[288] + 64] = mem[_1607]
        mem[mem[64] + 4] = (168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) + (14 * 3600)
        require ext_code.size(address(arg2))
        staticcall address(arg2).totalSupplyAtTimestamp(uint256 arg1) with:
                gas gas_remaining wei
               args ((168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) + (14 * 3600))
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1627 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[288] + 96] = mem[_1627]
        require ext_code.size(address(arg2))
        staticcall address(arg2).adminFeeRate() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1647 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[288] + 128] = mem[_1647]
        _1659 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        mem[mem[64] + 64] = mem[128]
        mem[mem[64] + 96] = mem[160]
        mem[mem[64] + 128] = mem[mem[192]]
        mem[mem[64] + 160] = mem[mem[192] + 32]
        mem[mem[64] + 192] = mem[mem[192] + 64]
        _1684 = mem[mem[192] + 96]
        mem[mem[64] + 224] = mem[mem[mem[192] + 96]]
        mem[mem[64] + 256] = mem[_1684 + 32]
        mem[mem[64] + 288] = mem[mem[224]]
        _1710 = mem[mem[224] + 32]
        mem[mem[64] + 320] = mem[mem[mem[224] + 32]]
        mem[mem[64] + 352] = mem[_1710 + 32]
        mem[mem[64] + 384] = mem[_1710 + 64]
        mem[mem[64] + 416] = 672
        _1733 = mem[(20 * ceil32(return_data.size)) + 1312]
        mem[mem[64] + 704] = 96
        _1734 = mem[_1733]
        mem[mem[64] + 800] = mem[_1733]
        idx = 0
        s = mem[64] + 832
        t = _1733 + 32
        while idx < _1734:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _1831 = mem[(20 * ceil32(return_data.size)) + 1344]
        mem[_1659 + 736] = (32 * _1734) + 128
        _1842 = mem[_1831]
        mem[_1659 + (32 * _1734) + 832] = mem[_1831]
        mem[_1659 + (32 * _1734) + 864 len 32 * _1842] = mem[_1831 + 32 len 32 * _1842]
        _2017 = mem[(20 * ceil32(return_data.size)) + 1376]
        mem[_1659 + 768] = (32 * _1734) + (32 * _1842) + 160
        mem[_1659 + (32 * _1734) + (32 * _1842) + 864] = mem[_2017]
        mem[_1659 + (32 * _1734) + (32 * _1842) + 896] = mem[_2017 + 32]
        _2020 = mem[_2017 + 64]
        mem[_1659 + (32 * _1734) + (32 * _1842) + 928] = 96
        _2034 = mem[_2020]
        mem[_1659 + (32 * _1734) + (32 * _1842) + 960] = mem[_2020]
        mem[_1659 + (32 * _1734) + (32 * _1842) + 992 len 32 * _2034] = mem[_2020 + 32 len 32 * _2034]
        _2154 = mem[mem[288]]
        mem[_1659 + 448] = mem[mem[mem[288]]]
        mem[_1659 + 480] = mem[_2154 + 32]
        mem[_1659 + 512] = mem[_2154 + 64]
        mem[_1659 + 544] = mem[_2154 + 96]
        mem[_1659 + 576] = mem[mem[288] + 32]
        mem[_1659 + 608] = mem[mem[288] + 64]
        mem[_1659 + 640] = mem[mem[288] + 96]
        mem[_1659 + 672] = mem[mem[288] + 128]
        return memory
          from mem[64]
           len _1659 + (32 * _1734) + (32 * _1842) + (32 * _2034) + -mem[64] + 992
    mem[_686 + (32 * _101) + ceil32(return_data.size) + 64 len 32 * _101] = call.data[calldata.size len 32 * _101]
    mem[(20 * ceil32(return_data.size)) + 1472] = _686 + (32 * _101) + ceil32(return_data.size) + 32
    idx = 0
    while idx < _101:
        require idx < mem[mem[(20 * ceil32(return_data.size)) + 1312]]
        _1287 = mem[(32 * idx) + mem[(20 * ceil32(return_data.size)) + 1312] + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + mem[(20 * ceil32(return_data.size)) + 1312] + 44 len 20]
        mem[mem[64] + 36] = block.timestamp
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x2bff5d97 with:
                gas gas_remaining wei
               args mem[mem[64] + 4], block.timestamp
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1340 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[mem[(20 * ceil32(return_data.size)) + 1344]]
        mem[(32 * idx) + mem[(20 * ceil32(return_data.size)) + 1344] + 32] = mem[_1340]
        mem[mem[64] + 4] = address(arg3)
        mem[mem[64] + 36] = address(_1287)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x15bbc6ce with:
                gas gas_remaining wei
               args address(arg3), address(_1287)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1436 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[mem[mem[(20 * ceil32(return_data.size)) + 1376] + 64]]
        mem[(32 * idx) + mem[mem[(20 * ceil32(return_data.size)) + 1376] + 64] + 32] = mem[_1436]
        idx = idx + 1
        continue 
    mem[256] = (20 * ceil32(return_data.size)) + 1312
    if not address(arg2):
        _1299 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        mem[mem[64] + 64] = mem[128]
        mem[mem[64] + 96] = mem[160]
        mem[mem[64] + 128] = mem[mem[192]]
        mem[mem[64] + 160] = mem[mem[192] + 32]
        mem[mem[64] + 192] = mem[mem[192] + 64]
        _1339 = mem[mem[192] + 96]
        mem[mem[64] + 224] = mem[mem[mem[192] + 96]]
        mem[mem[64] + 256] = mem[_1339 + 32]
        mem[mem[64] + 288] = mem[mem[224]]
        _1377 = mem[mem[224] + 32]
        mem[mem[64] + 320] = mem[mem[mem[224] + 32]]
        mem[mem[64] + 352] = mem[_1377 + 32]
        mem[mem[64] + 384] = mem[_1377 + 64]
        mem[mem[64] + 416] = 672
        _1427 = mem[(20 * ceil32(return_data.size)) + 1312]
        mem[mem[64] + 704] = 96
        _1428 = mem[_1427]
        mem[mem[64] + 800] = mem[_1427]
        idx = 0
        s = mem[64] + 832
        t = _1427 + 32
        while idx < _1428:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _1833 = mem[(20 * ceil32(return_data.size)) + 1344]
        mem[_1299 + 736] = (32 * _1428) + 128
        _1843 = mem[_1833]
        mem[_1299 + (32 * _1428) + 832] = mem[_1833]
        mem[_1299 + (32 * _1428) + 864 len 32 * _1843] = mem[_1833 + 32 len 32 * _1843]
        _2021 = mem[(20 * ceil32(return_data.size)) + 1376]
        mem[_1299 + 768] = (32 * _1428) + (32 * _1843) + 160
        mem[_1299 + (32 * _1428) + (32 * _1843) + 864] = mem[_2021]
        mem[_1299 + (32 * _1428) + (32 * _1843) + 896] = mem[_2021 + 32]
        _2024 = mem[_2021 + 64]
        mem[_1299 + (32 * _1428) + (32 * _1843) + 928] = 96
        _2035 = mem[_2024]
        mem[_1299 + (32 * _1428) + (32 * _1843) + 960] = mem[_2024]
        mem[_1299 + (32 * _1428) + (32 * _1843) + 992 len 32 * _2035] = mem[_2024 + 32 len 32 * _2035]
        _2155 = mem[mem[288]]
        mem[_1299 + 448] = mem[mem[mem[288]]]
        mem[_1299 + 480] = mem[_2155 + 32]
        mem[_1299 + 512] = mem[_2155 + 64]
        mem[_1299 + 544] = mem[_2155 + 96]
        mem[_1299 + 576] = mem[mem[288] + 32]
        mem[_1299 + 608] = mem[mem[288] + 64]
        mem[_1299 + 640] = mem[mem[288] + 96]
        mem[_1299 + 672] = mem[mem[288] + 128]
        return memory
          from mem[64]
           len _1299 + (32 * _1428) + (32 * _1843) + (32 * _2035) + -mem[64] + 992
    mem[mem[64] + 4] = address(arg3)
    require ext_code.size(address(arg2))
    call address(arg2).userCheckpoint(address arg1) with:
         gas gas_remaining wei
        args address(arg3)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1352 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[mem[288]]] = mem[_1352]
    mem[mem[64] + 4] = address(arg3)
    require ext_code.size(address(arg2))
    staticcall address(arg2).userLastBalances(address arg1) with:
            gas gas_remaining wei
           args address(arg3)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1435 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[mem[288]] + 32] = mem[_1435]
    require ext_code.size(address(arg2))
    staticcall address(arg2).userLockedBalances(address arg1) with:
            gas gas_remaining wei
           args address(arg3)
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1508 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _1519 = mem[_1508]
    _1535 = mem[mem[288]]
    mem[mem[mem[288]] + 96] = mem[_1508 + 32]
    mem[_1535 + 64] = _1519
    mem[mem[64] + 4] = (168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) - (154 * 3600)
    require ext_code.size(address(arg2))
    staticcall address(arg2).rewardsPerWeek(uint256 arg1) with:
            gas gas_remaining wei
           args ((168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) - (154 * 3600))
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1568 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[288] + 32] = mem[_1568]
    mem[mem[64] + 4] = (168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) - (154 * 3600)
    require ext_code.size(address(arg2))
    staticcall address(arg2).veSupplyPerWeek(uint256 arg1) with:
            gas gas_remaining wei
           args ((168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) - (154 * 3600))
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1608 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[288] + 64] = mem[_1608]
    mem[mem[64] + 4] = (168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) + (14 * 3600)
    require ext_code.size(address(arg2))
    staticcall address(arg2).totalSupplyAtTimestamp(uint256 arg1) with:
            gas gas_remaining wei
           args ((168 * 24 * 3600 * block.timestamp + (154 * 3600) / 168 * 24 * 3600) + (14 * 3600))
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1628 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[288] + 96] = mem[_1628]
    require ext_code.size(address(arg2))
    staticcall address(arg2).adminFeeRate() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1648 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[288] + 128] = mem[_1648]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64] = mem[128]
    mem[mem[64] + 96] = mem[160]
    mem[mem[64] + 128] = mem[mem[192]]
    mem[mem[64] + 160] = mem[mem[192] + 32]
    mem[mem[64] + 192] = mem[mem[192] + 64]
    _1692 = mem[mem[192] + 96]
    mem[mem[64] + 224] = mem[mem[mem[192] + 96]]
    mem[mem[64] + 256] = mem[_1692 + 32]
    mem[mem[64] + 288] = mem[mem[224]]
    _1712 = mem[mem[224] + 32]
    mem[mem[64] + 320] = mem[mem[mem[224] + 32]]
    mem[mem[64] + 352] = mem[_1712 + 32]
    mem[mem[64] + 384] = mem[_1712 + 64]
    mem[mem[64] + 416] = 672
    _1735 = mem[(20 * ceil32(return_data.size)) + 1312]
    mem[mem[64] + 704] = 96
    _1736 = mem[_1735]
    mem[mem[64] + 800] = mem[_1735]
    idx = 0
    s = mem[64] + 832
    t = _1735 + 32
    while idx < _1736:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _1835 = mem[(20 * ceil32(return_data.size)) + 1344]
    mem[mem[64] + 736] = (32 * _1736) + 128
    _1844 = mem[_1835]
    mem[mem[64] + (32 * _1736) + 832] = mem[_1835]
    mem[mem[64] + (32 * _1736) + 864 len 32 * _1844] = mem[_1835 + 32 len 32 * _1844]
    _2025 = mem[(20 * ceil32(return_data.size)) + 1376]
    mem[mem[64] + 768] = (32 * _1736) + (32 * _1844) + 160
    mem[mem[64] + (32 * _1736) + (32 * _1844) + 864] = mem[_2025]
    mem[mem[64] + (32 * _1736) + (32 * _1844) + 896] = mem[_2025 + 32]
    _2028 = mem[_2025 + 64]
    mem[mem[64] + (32 * _1736) + (32 * _1844) + 928] = 96
    _2036 = mem[_2028]
    mem[mem[64] + (32 * _1736) + (32 * _1844) + 960] = mem[_2028]
    mem[mem[64] + (32 * _1736) + (32 * _1844) + 992 len 32 * _2036] = mem[_2028 + 32 len 32 * _2036]
    _2156 = mem[mem[288]]
    mem[mem[64] + 448] = mem[mem[mem[288]]]
    mem[mem[64] + 480] = mem[_2156 + 32]
    mem[mem[64] + 512] = mem[_2156 + 64]
    mem[mem[64] + 544] = mem[_2156 + 96]
    mem[mem[64] + 576] = mem[mem[288] + 32]
    mem[mem[64] + 608] = mem[mem[288] + 64]
    mem[mem[64] + 640] = mem[mem[288] + 96]
    mem[mem[64] + 672] = mem[mem[288] + 128]
    return 32, mem[mem[64] + 32 len 384], 
           672,
           mem[mem[64] + 448 len 256],
           96,
           (32 * _1736) + 128,
           (32 * _1736) + (32 * _1844) + 160,
           mem[mem[64] + 800 len (32 * _1736) + (32 * _1844) + 128],
           96,
           mem[mem[64] + (32 * _1736) + (32 * _1844) + 960 len (32 * _2036) + 32]
}

function sub_eaf7885e(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 >= 96 and (32 * ('cd', 68).length) + 128 <= test266151307()
    mem[96] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    t = 128
    idx = 0
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require ('cd', 68).length <= test266151307()
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 68).length
    if not ('cd', 68).length:
        require ('cd', 68).length <= test266151307()
        mem[(64 * ('cd', 68).length) + 160] = ('cd', 68).length
        if not ('cd', 68).length:
            require ('cd', 68).length <= test266151307()
            mem[(98 * ('cd', 68).length) + 192] = ('cd', 68).length
            mem[64] = (131 * ('cd', 68).length) + 224
            if not ('cd', 68).length:
                idx = 0
                while idx < ('cd', 68).length:
                    require idx < mem[96]
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args address(cd[36]), 0, mem[(32 * idx) + 128]
                    mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2134 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 384
                    _2149 = mem[64]
                    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                    mem[64] = mem[64] + 128
                    require return_data.size >= 96
                    _2176 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2176] = mem[_2134]
                    mem[_2176 + 32] = mem[_2134 + 32]
                    mem[_2176 + 64] = mem[_2134 + 64]
                    mem[_2149] = _2176
                    require return_data.size - 96 >= 96
                    _2231 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2231] = mem[_2134 + 96]
                    mem[_2231 + 32] = mem[_2134 + 128]
                    mem[_2231 + 64] = mem[_2134 + 160]
                    mem[_2149 + 32] = _2231
                    require return_data.size - 192 >= 96
                    _2291 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2291] = mem[_2134 + 192]
                    mem[_2291 + 32] = mem[_2134 + 224]
                    mem[_2291 + 64] = mem[_2134 + 256]
                    mem[_2149 + 64] = _2291
                    require return_data.size - 288 >= 96
                    _2393 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2393] = mem[_2134 + 288]
                    mem[_2393 + 32] = mem[_2134 + 320]
                    mem[_2393 + 64] = mem[_2134 + 352]
                    mem[_2149 + 96] = _2393
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _2149
                    require idx < mem[96]
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args address(cd[36]), 1, mem[(32 * idx) + 128]
                    mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2554 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 384
                    _2603 = mem[64]
                    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                    mem[64] = mem[64] + 128
                    require return_data.size >= 96
                    _2684 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2684] = mem[_2554]
                    mem[_2684 + 32] = mem[_2554 + 32]
                    mem[_2684 + 64] = mem[_2554 + 64]
                    mem[_2603] = _2684
                    require return_data.size - 96 >= 96
                    _2746 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2746] = mem[_2554 + 96]
                    mem[_2746 + 32] = mem[_2554 + 128]
                    mem[_2746 + 64] = mem[_2554 + 160]
                    mem[_2603 + 32] = _2746
                    require return_data.size - 192 >= 96
                    _2796 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2796] = mem[_2554 + 192]
                    mem[_2796 + 32] = mem[_2554 + 224]
                    mem[_2796 + 64] = mem[_2554 + 256]
                    mem[_2603 + 64] = _2796
                    require return_data.size - 288 >= 96
                    _2840 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2840] = mem[_2554 + 288]
                    mem[_2840 + 32] = mem[_2554 + 320]
                    mem[_2840 + 64] = mem[_2554 + 352]
                    mem[_2603 + 96] = _2840
                    require idx < mem[(64 * ('cd', 68).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 68).length) + 192] = _2603
                    require idx < mem[96]
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args address(cd[36]), 2, mem[(32 * idx) + 128]
                    mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2890 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 384
                    _2903 = mem[64]
                    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                    mem[64] = mem[64] + 128
                    require return_data.size >= 96
                    _2928 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2928] = mem[_2890]
                    mem[_2928 + 32] = mem[_2890 + 32]
                    mem[_2928 + 64] = mem[_2890 + 64]
                    mem[_2903] = _2928
                    require return_data.size - 96 >= 96
                    _2962 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2962] = mem[_2890 + 96]
                    mem[_2962 + 32] = mem[_2890 + 128]
                    mem[_2962 + 64] = mem[_2890 + 160]
                    mem[_2903 + 32] = _2962
                    require return_data.size - 192 >= 96
                    _2987 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_2987] = mem[_2890 + 192]
                    mem[_2987 + 32] = mem[_2890 + 224]
                    mem[_2987 + 64] = mem[_2890 + 256]
                    mem[_2903 + 64] = _2987
                    require return_data.size - 288 >= 96
                    _3024 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_3024] = mem[_2890 + 288]
                    mem[_3024 + 32] = mem[_2890 + 320]
                    mem[_3024 + 64] = mem[_2890 + 352]
                    mem[_2903 + 96] = _3024
                    require idx < mem[(98 * ('cd', 68).length) + 192]
                    mem[(32 * idx) + (98 * ('cd', 68).length) + 224] = _2903
                    idx = idx + 1
                    continue 
                _2121 = mem[64]
                mem[mem[64]] = 96
                _2127 = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + 96] = mem[(32 * ('cd', 68).length) + 128]
                idx = 0
                s = (32 * ('cd', 68).length) + 160
                t = mem[64] + 128
                while idx < _2127:
                    _3170 = mem[s]
                    _3171 = mem[mem[s]]
                    mem[t] = mem[mem[mem[s]]]
                    mem[t + 32] = mem[_3171 + 32]
                    mem[t + 64] = mem[_3171 + 64]
                    _3179 = mem[_3170 + 32]
                    mem[t + 96] = mem[mem[_3170 + 32]]
                    mem[t + 128] = mem[_3179 + 32]
                    mem[t + 160] = mem[_3179 + 64]
                    _3188 = mem[_3170 + 64]
                    mem[t + 192] = mem[mem[_3170 + 64]]
                    mem[t + 224] = mem[_3188 + 32]
                    mem[t + 256] = mem[_3188 + 64]
                    _3200 = mem[_3170 + 96]
                    mem[t + 288] = mem[mem[_3170 + 96]]
                    mem[t + 320] = mem[_3200 + 32]
                    mem[t + 352] = mem[_3200 + 64]
                    idx = idx + 1
                    s = s + 32
                    t = t + 384
                    continue 
                mem[_2121 + 32] = (384 * _2127) + 128
                _3178 = mem[(64 * ('cd', 68).length) + 160]
                mem[_2121 + (384 * _2127) + 128] = mem[(64 * ('cd', 68).length) + 160]
                idx = 0
                s = (64 * ('cd', 68).length) + 192
                t = _2121 + (384 * _2127) + 160
                while idx < _3178:
                    _4152 = mem[s]
                    _4153 = mem[mem[s]]
                    mem[t] = mem[mem[mem[s]]]
                    mem[t + 32] = mem[_4153 + 32]
                    mem[t + 64] = mem[_4153 + 64]
                    _4161 = mem[_4152 + 32]
                    mem[t + 96] = mem[mem[_4152 + 32]]
                    mem[t + 128] = mem[_4161 + 32]
                    mem[t + 160] = mem[_4161 + 64]
                    _4170 = mem[_4152 + 64]
                    mem[t + 192] = mem[mem[_4152 + 64]]
                    mem[t + 224] = mem[_4170 + 32]
                    mem[t + 256] = mem[_4170 + 64]
                    _4182 = mem[_4152 + 96]
                    mem[t + 288] = mem[mem[_4152 + 96]]
                    mem[t + 320] = mem[_4182 + 32]
                    mem[t + 352] = mem[_4182 + 64]
                    idx = idx + 1
                    s = s + 32
                    t = t + 384
                    continue 
                mem[_2121 + 64] = (384 * _2127) + (384 * _3178) + 160
                _4160 = mem[(98 * ('cd', 68).length) + 192]
                mem[_2121 + (384 * _2127) + (384 * _3178) + 160] = mem[(98 * ('cd', 68).length) + 192]
                idx = 0
                s = (98 * ('cd', 68).length) + 224
                t = _2121 + (384 * _2127) + (384 * _3178) + 192
                while idx < _4160:
                    _5113 = mem[s]
                    _5114 = mem[mem[s]]
                    mem[t] = mem[mem[mem[s]]]
                    mem[t + 32] = mem[_5114 + 32]
                    mem[t + 64] = mem[_5114 + 64]
                    _5137 = mem[_5113 + 32]
                    mem[t + 96] = mem[mem[_5113 + 32]]
                    mem[t + 128] = mem[_5137 + 32]
                    mem[t + 160] = mem[_5137 + 64]
                    _5150 = mem[_5113 + 64]
                    mem[t + 192] = mem[mem[_5113 + 64]]
                    mem[t + 224] = mem[_5150 + 32]
                    mem[t + 256] = mem[_5150 + 64]
                    _5166 = mem[_5113 + 96]
                    mem[t + 288] = mem[mem[_5113 + 96]]
                    mem[t + 320] = mem[_5166 + 32]
                    mem[t + 352] = mem[_5166 + 64]
                    idx = idx + 1
                    s = s + 32
                    t = t + 384
                    continue 
                return memory
                  from mem[64]
                   len _2121 + (384 * _2127) + (384 * _3178) + (384 * _4160) + -mem[64] + 192
            mem[(131 * ('cd', 68).length) + 352] = 0
            mem[(131 * ('cd', 68).length) + 384] = 0
            mem[(131 * ('cd', 68).length) + 416] = 0
            mem[(131 * ('cd', 68).length) + 224] = (131 * ('cd', 68).length) + 352
            mem[(131 * ('cd', 68).length) + 448] = 0
            mem[(131 * ('cd', 68).length) + 480] = 0
            mem[(131 * ('cd', 68).length) + 512] = 0
            mem[(131 * ('cd', 68).length) + 256] = (131 * ('cd', 68).length) + 448
            mem[(131 * ('cd', 68).length) + 544] = 0
            mem[(131 * ('cd', 68).length) + 576] = 0
            mem[(131 * ('cd', 68).length) + 608] = 0
            mem[(131 * ('cd', 68).length) + 288] = (131 * ('cd', 68).length) + 544
            mem[64] = (131 * ('cd', 68).length) + 736
            mem[(131 * ('cd', 68).length) + 640] = 0
            mem[(131 * ('cd', 68).length) + 672] = 0
            mem[(131 * ('cd', 68).length) + 704] = 0
            mem[(131 * ('cd', 68).length) + 320] = (131 * ('cd', 68).length) + 640
            mem[var43002] = (131 * ('cd', 68).length) + 224
            s = (131 * ('cd', 68).length) + 224
            s = (131 * ('cd', 68).length) + 224
            s = var43002
            idx = var43003
            while idx - 1:
                _4193 = mem[64]
                mem[64] = mem[64] + 128
                mem[64] = mem[64] + 96
                mem[(131 * ('cd', 68).length) + 352] = 0
                mem[(131 * ('cd', 68).length) + 384] = 0
                mem[(131 * ('cd', 68).length) + 416] = 0
                mem[_4193] = (131 * ('cd', 68).length) + 352
                mem[64] = mem[64] + 96
                mem[(131 * ('cd', 68).length) + 448] = 0
                mem[(131 * ('cd', 68).length) + 480] = 0
                mem[(131 * ('cd', 68).length) + 512] = 0
                mem[_4193 + 32] = (131 * ('cd', 68).length) + 448
                mem[64] = mem[64] + 96
                mem[(131 * ('cd', 68).length) + 544] = 0
                mem[(131 * ('cd', 68).length) + 576] = 0
                mem[(131 * ('cd', 68).length) + 608] = 0
                mem[_4193 + 64] = (131 * ('cd', 68).length) + 544
                mem[64] = mem[64] + 96
                mem[(131 * ('cd', 68).length) + 640] = 0
                mem[(131 * ('cd', 68).length) + 672] = 0
                mem[(131 * ('cd', 68).length) + 704] = 0
                mem[_4193 + 96] = (131 * ('cd', 68).length) + 640
                mem[s + 32] = _4193
                s = _4193
                s = _4193
                s = s + 32
                idx = idx - 1
                continue 
            _5110 = mem[96]
            idx = 0
            while idx < _5110:
                require idx < mem[96]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(cd[36]), 0, mem[(32 * idx) + 128]
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5156 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _5191 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                require return_data.size >= 96
                _5261 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5261] = mem[_5156]
                mem[_5261 + 32] = mem[_5156 + 32]
                mem[_5261 + 64] = mem[_5156 + 64]
                mem[_5191] = _5261
                require return_data.size - 96 >= 96
                _5365 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5365] = mem[_5156 + 96]
                mem[_5365 + 32] = mem[_5156 + 128]
                mem[_5365 + 64] = mem[_5156 + 160]
                mem[_5191 + 32] = _5365
                require return_data.size - 192 >= 96
                _5447 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5447] = mem[_5156 + 192]
                mem[_5447 + 32] = mem[_5156 + 224]
                mem[_5447 + 64] = mem[_5156 + 256]
                mem[_5191 + 64] = _5447
                require return_data.size - 288 >= 96
                _5553 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5553] = mem[_5156 + 288]
                mem[_5553 + 32] = mem[_5156 + 320]
                mem[_5553 + 64] = mem[_5156 + 352]
                mem[_5191 + 96] = _5553
                require idx < mem[(32 * ('cd', 68).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _5191
                require idx < mem[96]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(cd[36]), 1, mem[(32 * idx) + 128]
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5661 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _5683 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                require return_data.size >= 96
                _5715 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5715] = mem[_5661]
                mem[_5715 + 32] = mem[_5661 + 32]
                mem[_5715 + 64] = mem[_5661 + 64]
                mem[_5683] = _5715
                require return_data.size - 96 >= 96
                _5746 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5746] = mem[_5661 + 96]
                mem[_5746 + 32] = mem[_5661 + 128]
                mem[_5746 + 64] = mem[_5661 + 160]
                mem[_5683 + 32] = _5746
                require return_data.size - 192 >= 96
                _5766 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5766] = mem[_5661 + 192]
                mem[_5766 + 32] = mem[_5661 + 224]
                mem[_5766 + 64] = mem[_5661 + 256]
                mem[_5683 + 64] = _5766
                require return_data.size - 288 >= 96
                _5797 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5797] = mem[_5661 + 288]
                mem[_5797 + 32] = mem[_5661 + 320]
                mem[_5797 + 64] = mem[_5661 + 352]
                mem[_5683 + 96] = _5797
                require idx < mem[(64 * ('cd', 68).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 68).length) + 192] = _5683
                require idx < mem[96]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(cd[36]), 2, mem[(32 * idx) + 128]
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5848 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _5858 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                require return_data.size >= 96
                _5876 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5876] = mem[_5848]
                mem[_5876 + 32] = mem[_5848 + 32]
                mem[_5876 + 64] = mem[_5848 + 64]
                mem[_5858] = _5876
                require return_data.size - 96 >= 96
                _5907 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5907] = mem[_5848 + 96]
                mem[_5907 + 32] = mem[_5848 + 128]
                mem[_5907 + 64] = mem[_5848 + 160]
                mem[_5858 + 32] = _5907
                require return_data.size - 192 >= 96
                _5927 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5927] = mem[_5848 + 192]
                mem[_5927 + 32] = mem[_5848 + 224]
                mem[_5927 + 64] = mem[_5848 + 256]
                mem[_5858 + 64] = _5927
                require return_data.size - 288 >= 96
                _5958 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5958] = mem[_5848 + 288]
                mem[_5958 + 32] = mem[_5848 + 320]
                mem[_5958 + 64] = mem[_5848 + 352]
                mem[_5858 + 96] = _5958
                require idx < mem[(98 * ('cd', 68).length) + 192]
                mem[(32 * idx) + (98 * ('cd', 68).length) + 224] = _5858
                _5110 = mem[96]
                idx = idx + 1
                continue 
            _5124 = mem[64]
            mem[mem[64]] = 96
            _5141 = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + 96] = mem[(32 * ('cd', 68).length) + 128]
            idx = 0
            s = (32 * ('cd', 68).length) + 160
            t = mem[64] + 128
            while idx < _5141:
                _6035 = mem[s]
                _6036 = mem[mem[s]]
                mem[t] = mem[mem[mem[s]]]
                mem[t + 32] = mem[_6036 + 32]
                mem[t + 64] = mem[_6036 + 64]
                _6054 = mem[_6035 + 32]
                mem[t + 96] = mem[mem[_6035 + 32]]
                mem[t + 128] = mem[_6054 + 32]
                mem[t + 160] = mem[_6054 + 64]
                _6073 = mem[_6035 + 64]
                mem[t + 192] = mem[mem[_6035 + 64]]
                mem[t + 224] = mem[_6073 + 32]
                mem[t + 256] = mem[_6073 + 64]
                _6103 = mem[_6035 + 96]
                mem[t + 288] = mem[mem[_6035 + 96]]
                mem[t + 320] = mem[_6103 + 32]
                mem[t + 352] = mem[_6103 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 384
                continue 
            mem[_5124 + 32] = (384 * _5141) + 128
            _6053 = mem[(64 * ('cd', 68).length) + 160]
            mem[_5124 + (384 * _5141) + 128] = mem[(64 * ('cd', 68).length) + 160]
            idx = 0
            s = (64 * ('cd', 68).length) + 192
            t = _5124 + (384 * _5141) + 160
            while idx < _6053:
                _6726 = mem[s]
                _6727 = mem[mem[s]]
                mem[t] = mem[mem[mem[s]]]
                mem[t + 32] = mem[_6727 + 32]
                mem[t + 64] = mem[_6727 + 64]
                _6745 = mem[_6726 + 32]
                mem[t + 96] = mem[mem[_6726 + 32]]
                mem[t + 128] = mem[_6745 + 32]
                mem[t + 160] = mem[_6745 + 64]
                _6764 = mem[_6726 + 64]
                mem[t + 192] = mem[mem[_6726 + 64]]
                mem[t + 224] = mem[_6764 + 32]
                mem[t + 256] = mem[_6764 + 64]
                _6794 = mem[_6726 + 96]
                mem[t + 288] = mem[mem[_6726 + 96]]
                mem[t + 320] = mem[_6794 + 32]
                mem[t + 352] = mem[_6794 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 384
                continue 
            mem[_5124 + 64] = (384 * _5141) + (384 * _6053) + 160
            _6744 = mem[(98 * ('cd', 68).length) + 192]
            mem[_5124 + (384 * _5141) + (384 * _6053) + 160] = mem[(98 * ('cd', 68).length) + 192]
            idx = 0
            s = (98 * ('cd', 68).length) + 224
            t = _5124 + (384 * _5141) + (384 * _6053) + 192
            while idx < _6744:
                _7360 = mem[s]
                _7361 = mem[mem[s]]
                mem[t] = mem[mem[mem[s]]]
                mem[t + 32] = mem[_7361 + 32]
                mem[t + 64] = mem[_7361 + 64]
                _7390 = mem[_7360 + 32]
                mem[t + 96] = mem[mem[_7360 + 32]]
                mem[t + 128] = mem[_7390 + 32]
                mem[t + 160] = mem[_7390 + 64]
                _7411 = mem[_7360 + 64]
                mem[t + 192] = mem[mem[_7360 + 64]]
                mem[t + 224] = mem[_7411 + 32]
                mem[t + 256] = mem[_7411 + 64]
                _7433 = mem[_7360 + 96]
                mem[t + 288] = mem[mem[_7360 + 96]]
                mem[t + 320] = mem[_7433 + 32]
                mem[t + 352] = mem[_7433 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 384
                continue 
            return memory
              from mem[64]
               len _5124 + (384 * _5141) + (384 * _6053) + (384 * _6744) + -mem[64] + 192
        mem[(98 * ('cd', 68).length) + 320] = 0
        mem[(98 * ('cd', 68).length) + 352] = 0
        mem[(98 * ('cd', 68).length) + 384] = 0
        mem[(98 * ('cd', 68).length) + 192] = (98 * ('cd', 68).length) + 320
        mem[(98 * ('cd', 68).length) + 416] = 0
        mem[(98 * ('cd', 68).length) + 448] = 0
        mem[(98 * ('cd', 68).length) + 480] = 0
        mem[(98 * ('cd', 68).length) + 224] = (98 * ('cd', 68).length) + 416
        mem[(98 * ('cd', 68).length) + 512] = 0
        mem[(98 * ('cd', 68).length) + 544] = 0
        mem[(98 * ('cd', 68).length) + 576] = 0
        mem[(98 * ('cd', 68).length) + 256] = (98 * ('cd', 68).length) + 512
        mem[64] = (98 * ('cd', 68).length) + 704
        mem[(98 * ('cd', 68).length) + 608] = 0
        mem[(98 * ('cd', 68).length) + 640] = 0
        mem[(98 * ('cd', 68).length) + 672] = 0
        mem[(98 * ('cd', 68).length) + 288] = (98 * ('cd', 68).length) + 608
        mem[var41002] = (98 * ('cd', 68).length) + 192
        s = (98 * ('cd', 68).length) + 192
        s = (98 * ('cd', 68).length) + 192
        s = var41002
        idx = var41003
        while idx - 1:
            _4194 = mem[64]
            mem[64] = mem[64] + 128
            mem[64] = mem[64] + 96
            mem[(98 * ('cd', 68).length) + 320] = 0
            mem[(98 * ('cd', 68).length) + 352] = 0
            mem[(98 * ('cd', 68).length) + 384] = 0
            mem[_4194] = (98 * ('cd', 68).length) + 320
            mem[64] = mem[64] + 96
            mem[(98 * ('cd', 68).length) + 416] = 0
            mem[(98 * ('cd', 68).length) + 448] = 0
            mem[(98 * ('cd', 68).length) + 480] = 0
            mem[_4194 + 32] = (98 * ('cd', 68).length) + 416
            mem[64] = mem[64] + 96
            mem[(98 * ('cd', 68).length) + 512] = 0
            mem[(98 * ('cd', 68).length) + 544] = 0
            mem[(98 * ('cd', 68).length) + 576] = 0
            mem[_4194 + 64] = (98 * ('cd', 68).length) + 512
            mem[64] = mem[64] + 96
            mem[(98 * ('cd', 68).length) + 608] = 0
            mem[(98 * ('cd', 68).length) + 640] = 0
            mem[(98 * ('cd', 68).length) + 672] = 0
            mem[_4194 + 96] = (98 * ('cd', 68).length) + 608
            mem[s + 32] = _4194
            s = _4194
            s = _4194
            s = s + 32
            idx = idx - 1
            continue 
        _4195 = mem[96]
        require mem[96] <= test266151307()
        _4200 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + (32 * _4195) + 32
        if not _4195:
            _5111 = mem[96]
            idx = 0
            while idx < _5111:
                require idx < mem[96]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(cd[36]), 0, mem[(32 * idx) + 128]
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5159 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _5195 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                require return_data.size >= 96
                _5265 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5265] = mem[_5159]
                mem[_5265 + 32] = mem[_5159 + 32]
                mem[_5265 + 64] = mem[_5159 + 64]
                mem[_5195] = _5265
                require return_data.size - 96 >= 96
                _5367 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5367] = mem[_5159 + 96]
                mem[_5367 + 32] = mem[_5159 + 128]
                mem[_5367 + 64] = mem[_5159 + 160]
                mem[_5195 + 32] = _5367
                require return_data.size - 192 >= 96
                _5448 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5448] = mem[_5159 + 192]
                mem[_5448 + 32] = mem[_5159 + 224]
                mem[_5448 + 64] = mem[_5159 + 256]
                mem[_5195 + 64] = _5448
                require return_data.size - 288 >= 96
                _5554 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5554] = mem[_5159 + 288]
                mem[_5554 + 32] = mem[_5159 + 320]
                mem[_5554 + 64] = mem[_5159 + 352]
                mem[_5195 + 96] = _5554
                require idx < mem[(32 * ('cd', 68).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _5195
                require idx < mem[96]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(cd[36]), 1, mem[(32 * idx) + 128]
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5662 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _5684 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                require return_data.size >= 96
                _5716 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5716] = mem[_5662]
                mem[_5716 + 32] = mem[_5662 + 32]
                mem[_5716 + 64] = mem[_5662 + 64]
                mem[_5684] = _5716
                require return_data.size - 96 >= 96
                _5747 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5747] = mem[_5662 + 96]
                mem[_5747 + 32] = mem[_5662 + 128]
                mem[_5747 + 64] = mem[_5662 + 160]
                mem[_5684 + 32] = _5747
                require return_data.size - 192 >= 96
                _5767 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5767] = mem[_5662 + 192]
                mem[_5767 + 32] = mem[_5662 + 224]
                mem[_5767 + 64] = mem[_5662 + 256]
                mem[_5684 + 64] = _5767
                require return_data.size - 288 >= 96
                _5798 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5798] = mem[_5662 + 288]
                mem[_5798 + 32] = mem[_5662 + 320]
                mem[_5798 + 64] = mem[_5662 + 352]
                mem[_5684 + 96] = _5798
                require idx < mem[(64 * ('cd', 68).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 68).length) + 192] = _5684
                require idx < mem[96]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(cd[36]), 2, mem[(32 * idx) + 128]
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5849 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _5859 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                require return_data.size >= 96
                _5877 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5877] = mem[_5849]
                mem[_5877 + 32] = mem[_5849 + 32]
                mem[_5877 + 64] = mem[_5849 + 64]
                mem[_5859] = _5877
                require return_data.size - 96 >= 96
                _5908 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5908] = mem[_5849 + 96]
                mem[_5908 + 32] = mem[_5849 + 128]
                mem[_5908 + 64] = mem[_5849 + 160]
                mem[_5859 + 32] = _5908
                require return_data.size - 192 >= 96
                _5928 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5928] = mem[_5849 + 192]
                mem[_5928 + 32] = mem[_5849 + 224]
                mem[_5928 + 64] = mem[_5849 + 256]
                mem[_5859 + 64] = _5928
                require return_data.size - 288 >= 96
                _5959 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5959] = mem[_5849 + 288]
                mem[_5959 + 32] = mem[_5849 + 320]
                mem[_5959 + 64] = mem[_5849 + 352]
                mem[_5859 + 96] = _5959
                require idx < mem[_4200]
                mem[(32 * idx) + _4200 + 32] = _5859
                _5111 = mem[96]
                idx = idx + 1
                continue 
            _5127 = mem[64]
            mem[mem[64]] = 96
            _5143 = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + 96] = mem[(32 * ('cd', 68).length) + 128]
            idx = 0
            s = (32 * ('cd', 68).length) + 160
            t = mem[64] + 128
            while idx < _5143:
                _6037 = mem[s]
                _6038 = mem[mem[s]]
                mem[t] = mem[mem[mem[s]]]
                mem[t + 32] = mem[_6038 + 32]
                mem[t + 64] = mem[_6038 + 64]
                _6056 = mem[_6037 + 32]
                mem[t + 96] = mem[mem[_6037 + 32]]
                mem[t + 128] = mem[_6056 + 32]
                mem[t + 160] = mem[_6056 + 64]
                _6076 = mem[_6037 + 64]
                mem[t + 192] = mem[mem[_6037 + 64]]
                mem[t + 224] = mem[_6076 + 32]
                mem[t + 256] = mem[_6076 + 64]
                _6106 = mem[_6037 + 96]
                mem[t + 288] = mem[mem[_6037 + 96]]
                mem[t + 320] = mem[_6106 + 32]
                mem[t + 352] = mem[_6106 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 384
                continue 
            mem[_5127 + 32] = (384 * _5143) + 128
            _6055 = mem[(64 * ('cd', 68).length) + 160]
            mem[_5127 + (384 * _5143) + 128] = mem[(64 * ('cd', 68).length) + 160]
            idx = 0
            s = (64 * ('cd', 68).length) + 192
            t = _5127 + (384 * _5143) + 160
            while idx < _6055:
                _6728 = mem[s]
                _6729 = mem[mem[s]]
                mem[t] = mem[mem[mem[s]]]
                mem[t + 32] = mem[_6729 + 32]
                mem[t + 64] = mem[_6729 + 64]
                _6747 = mem[_6728 + 32]
                mem[t + 96] = mem[mem[_6728 + 32]]
                mem[t + 128] = mem[_6747 + 32]
                mem[t + 160] = mem[_6747 + 64]
                _6767 = mem[_6728 + 64]
                mem[t + 192] = mem[mem[_6728 + 64]]
                mem[t + 224] = mem[_6767 + 32]
                mem[t + 256] = mem[_6767 + 64]
                _6797 = mem[_6728 + 96]
                mem[t + 288] = mem[mem[_6728 + 96]]
                mem[t + 320] = mem[_6797 + 32]
                mem[t + 352] = mem[_6797 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 384
                continue 
            mem[_5127 + 64] = (384 * _5143) + (384 * _6055) + 160
            _6746 = mem[_4200]
            mem[_5127 + (384 * _5143) + (384 * _6055) + 160] = mem[_4200]
            idx = 0
            s = _4200 + 32
            t = _5127 + (384 * _5143) + (384 * _6055) + 192
            while idx < _6746:
                _7362 = mem[s]
                _7363 = mem[mem[s]]
                mem[t] = mem[mem[mem[s]]]
                mem[t + 32] = mem[_7363 + 32]
                mem[t + 64] = mem[_7363 + 64]
                _7392 = mem[_7362 + 32]
                mem[t + 96] = mem[mem[_7362 + 32]]
                mem[t + 128] = mem[_7392 + 32]
                mem[t + 160] = mem[_7392 + 64]
                _7412 = mem[_7362 + 64]
                mem[t + 192] = mem[mem[_7362 + 64]]
                mem[t + 224] = mem[_7412 + 32]
                mem[t + 256] = mem[_7412 + 64]
                _7434 = mem[_7362 + 96]
                mem[t + 288] = mem[mem[_7362 + 96]]
                mem[t + 320] = mem[_7434 + 32]
                mem[t + 352] = mem[_7434 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 384
                continue 
            return memory
              from mem[64]
               len _5127 + (384 * _5143) + (384 * _6055) + (384 * _6746) + -mem[64] + 192
        mem[_4200 + (32 * _4195) + 160] = 0
        mem[_4200 + (32 * _4195) + 192] = 0
        mem[_4200 + (32 * _4195) + 224] = 0
        mem[_4200 + (32 * _4195) + 32] = _4200 + (32 * _4195) + 160
        mem[_4200 + (32 * _4195) + 256] = 0
        mem[_4200 + (32 * _4195) + 288] = 0
        mem[_4200 + (32 * _4195) + 320] = 0
        mem[_4200 + (32 * _4195) + 64] = _4200 + (32 * _4195) + 256
        mem[_4200 + (32 * _4195) + 352] = 0
        mem[_4200 + (32 * _4195) + 384] = 0
        mem[_4200 + (32 * _4195) + 416] = 0
        mem[_4200 + (32 * _4195) + 96] = _4200 + (32 * _4195) + 352
        mem[64] = _4200 + (32 * _4195) + 544
        mem[_4200 + (32 * _4195) + 448] = 0
        mem[_4200 + (32 * _4195) + 480] = 0
        mem[_4200 + (32 * _4195) + 512] = 0
        mem[_4200 + (32 * _4195) + 128] = _4200 + (32 * _4195) + 448
        mem[var59002] = _4200 + (32 * _4195) + 32
        s = _4200 + (32 * _4195) + 32
        s = _4200 + (32 * _4195) + 32
        s = var59002
        idx = var59003
        while idx - 1:
            _6828 = mem[64]
            mem[64] = mem[64] + 128
            mem[64] = mem[64] + 96
            mem[_4200 + (32 * _4195) + 160] = 0
            mem[_4200 + (32 * _4195) + 192] = 0
            mem[_4200 + (32 * _4195) + 224] = 0
            mem[_6828] = _4200 + (32 * _4195) + 160
            mem[64] = mem[64] + 96
            mem[_4200 + (32 * _4195) + 256] = 0
            mem[_4200 + (32 * _4195) + 288] = 0
            mem[_4200 + (32 * _4195) + 320] = 0
            mem[_6828 + 32] = _4200 + (32 * _4195) + 256
            mem[64] = mem[64] + 96
            mem[_4200 + (32 * _4195) + 352] = 0
            mem[_4200 + (32 * _4195) + 384] = 0
            mem[_4200 + (32 * _4195) + 416] = 0
            mem[_6828 + 64] = _4200 + (32 * _4195) + 352
            mem[64] = mem[64] + 96
            mem[_4200 + (32 * _4195) + 448] = 0
            mem[_4200 + (32 * _4195) + 480] = 0
            mem[_4200 + (32 * _4195) + 512] = 0
            mem[_6828 + 96] = _4200 + (32 * _4195) + 448
            mem[s + 32] = _6828
            s = _6828
            s = _6828
            s = s + 32
            idx = idx - 1
            continue 
        _7357 = mem[96]
        idx = 0
        while idx < _7357:
            require idx < mem[96]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(cd[36]), 0, mem[(32 * idx) + 128]
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7422 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _7464 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            require return_data.size >= 96
            _7531 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7531] = mem[_7422]
            mem[_7531 + 32] = mem[_7422 + 32]
            mem[_7531 + 64] = mem[_7422 + 64]
            mem[_7464] = _7531
            require return_data.size - 96 >= 96
            _7616 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7616] = mem[_7422 + 96]
            mem[_7616 + 32] = mem[_7422 + 128]
            mem[_7616 + 64] = mem[_7422 + 160]
            mem[_7464 + 32] = _7616
            require return_data.size - 192 >= 96
            _7660 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7660] = mem[_7422 + 192]
            mem[_7660 + 32] = mem[_7422 + 224]
            mem[_7660 + 64] = mem[_7422 + 256]
            mem[_7464 + 64] = _7660
            require return_data.size - 288 >= 96
            _7701 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7701] = mem[_7422 + 288]
            mem[_7701 + 32] = mem[_7422 + 320]
            mem[_7701 + 64] = mem[_7422 + 352]
            mem[_7464 + 96] = _7701
            require idx < mem[(32 * ('cd', 68).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _7464
            require idx < mem[96]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(cd[36]), 1, mem[(32 * idx) + 128]
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7743 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _7746 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            require return_data.size >= 96
            _7754 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7754] = mem[_7743]
            mem[_7754 + 32] = mem[_7743 + 32]
            mem[_7754 + 64] = mem[_7743 + 64]
            mem[_7746] = _7754
            require return_data.size - 96 >= 96
            _7771 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7771] = mem[_7743 + 96]
            mem[_7771 + 32] = mem[_7743 + 128]
            mem[_7771 + 64] = mem[_7743 + 160]
            mem[_7746 + 32] = _7771
            require return_data.size - 192 >= 96
            _7784 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7784] = mem[_7743 + 192]
            mem[_7784 + 32] = mem[_7743 + 224]
            mem[_7784 + 64] = mem[_7743 + 256]
            mem[_7746 + 64] = _7784
            require return_data.size - 288 >= 96
            _7800 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7800] = mem[_7743 + 288]
            mem[_7800 + 32] = mem[_7743 + 320]
            mem[_7800 + 64] = mem[_7743 + 352]
            mem[_7746 + 96] = _7800
            require idx < mem[(64 * ('cd', 68).length) + 160]
            mem[(32 * idx) + (64 * ('cd', 68).length) + 192] = _7746
            require idx < mem[96]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(cd[36]), 2, mem[(32 * idx) + 128]
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7835 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _7838 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            require return_data.size >= 96
            _7846 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7846] = mem[_7835]
            mem[_7846 + 32] = mem[_7835 + 32]
            mem[_7846 + 64] = mem[_7835 + 64]
            mem[_7838] = _7846
            require return_data.size - 96 >= 96
            _7863 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7863] = mem[_7835 + 96]
            mem[_7863 + 32] = mem[_7835 + 128]
            mem[_7863 + 64] = mem[_7835 + 160]
            mem[_7838 + 32] = _7863
            require return_data.size - 192 >= 96
            _7876 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7876] = mem[_7835 + 192]
            mem[_7876 + 32] = mem[_7835 + 224]
            mem[_7876 + 64] = mem[_7835 + 256]
            mem[_7838 + 64] = _7876
            require return_data.size - 288 >= 96
            _7892 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7892] = mem[_7835 + 288]
            mem[_7892 + 32] = mem[_7835 + 320]
            mem[_7892 + 64] = mem[_7835 + 352]
            mem[_7838 + 96] = _7892
            require idx < mem[_4200]
            mem[(32 * idx) + _4200 + 32] = _7838
            _7357 = mem[96]
            idx = idx + 1
            continue 
        _7376 = mem[64]
        mem[mem[64]] = 96
        _7401 = mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + 96] = mem[(32 * ('cd', 68).length) + 128]
        idx = 0
        s = (32 * ('cd', 68).length) + 160
        t = mem[64] + 128
        while idx < _7401:
            _7921 = mem[s]
            _7922 = mem[mem[s]]
            mem[t] = mem[mem[mem[s]]]
            mem[t + 32] = mem[_7922 + 32]
            mem[t + 64] = mem[_7922 + 64]
            _7938 = mem[_7921 + 32]
            mem[t + 96] = mem[mem[_7921 + 32]]
            mem[t + 128] = mem[_7938 + 32]
            mem[t + 160] = mem[_7938 + 64]
            _7955 = mem[_7921 + 64]
            mem[t + 192] = mem[mem[_7921 + 64]]
            mem[t + 224] = mem[_7955 + 32]
            mem[t + 256] = mem[_7955 + 64]
            _7983 = mem[_7921 + 96]
            mem[t + 288] = mem[mem[_7921 + 96]]
            mem[t + 320] = mem[_7983 + 32]
            mem[t + 352] = mem[_7983 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        mem[_7376 + 32] = (384 * _7401) + 128
        _7937 = mem[(64 * ('cd', 68).length) + 160]
        mem[_7376 + (384 * _7401) + 128] = mem[(64 * ('cd', 68).length) + 160]
        idx = 0
        s = (64 * ('cd', 68).length) + 192
        t = _7376 + (384 * _7401) + 160
        while idx < _7937:
            _8215 = mem[s]
            _8216 = mem[mem[s]]
            mem[t] = mem[mem[mem[s]]]
            mem[t + 32] = mem[_8216 + 32]
            mem[t + 64] = mem[_8216 + 64]
            _8232 = mem[_8215 + 32]
            mem[t + 96] = mem[mem[_8215 + 32]]
            mem[t + 128] = mem[_8232 + 32]
            mem[t + 160] = mem[_8232 + 64]
            _8249 = mem[_8215 + 64]
            mem[t + 192] = mem[mem[_8215 + 64]]
            mem[t + 224] = mem[_8249 + 32]
            mem[t + 256] = mem[_8249 + 64]
            _8277 = mem[_8215 + 96]
            mem[t + 288] = mem[mem[_8215 + 96]]
            mem[t + 320] = mem[_8277 + 32]
            mem[t + 352] = mem[_8277 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        mem[_7376 + 64] = (384 * _7401) + (384 * _7937) + 160
        _8231 = mem[_4200]
        mem[_7376 + (384 * _7401) + (384 * _7937) + 160] = mem[_4200]
        idx = 0
        s = _4200 + 32
        t = _7376 + (384 * _7401) + (384 * _7937) + 192
        while idx < _8231:
            _8454 = mem[s]
            _8455 = mem[mem[s]]
            mem[t] = mem[mem[mem[s]]]
            mem[t + 32] = mem[_8455 + 32]
            mem[t + 64] = mem[_8455 + 64]
            _8474 = mem[_8454 + 32]
            mem[t + 96] = mem[mem[_8454 + 32]]
            mem[t + 128] = mem[_8474 + 32]
            mem[t + 160] = mem[_8474 + 64]
            _8490 = mem[_8454 + 64]
            mem[t + 192] = mem[mem[_8454 + 64]]
            mem[t + 224] = mem[_8490 + 32]
            mem[t + 256] = mem[_8490 + 64]
            _8505 = mem[_8454 + 96]
            mem[t + 288] = mem[mem[_8454 + 96]]
            mem[t + 320] = mem[_8505 + 32]
            mem[t + 352] = mem[_8505 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        return memory
          from mem[64]
           len _7376 + (384 * _7401) + (384 * _7937) + (384 * _8231) + -mem[64] + 192
    mem[(64 * ('cd', 68).length) + 288] = 0
    mem[(64 * ('cd', 68).length) + 320] = 0
    mem[(64 * ('cd', 68).length) + 352] = 0
    mem[(64 * ('cd', 68).length) + 160] = (64 * ('cd', 68).length) + 288
    mem[(64 * ('cd', 68).length) + 384] = 0
    mem[(64 * ('cd', 68).length) + 416] = 0
    mem[(64 * ('cd', 68).length) + 448] = 0
    mem[(64 * ('cd', 68).length) + 192] = (64 * ('cd', 68).length) + 384
    mem[(64 * ('cd', 68).length) + 480] = 0
    mem[(64 * ('cd', 68).length) + 512] = 0
    mem[(64 * ('cd', 68).length) + 544] = 0
    mem[(64 * ('cd', 68).length) + 224] = (64 * ('cd', 68).length) + 480
    mem[64] = (64 * ('cd', 68).length) + 672
    mem[(64 * ('cd', 68).length) + 576] = 0
    mem[(64 * ('cd', 68).length) + 608] = 0
    mem[(64 * ('cd', 68).length) + 640] = 0
    mem[(64 * ('cd', 68).length) + 256] = (64 * ('cd', 68).length) + 576
    mem[var39002] = (64 * ('cd', 68).length) + 160
    s = (64 * ('cd', 68).length) + 160
    s = (64 * ('cd', 68).length) + 160
    s = var39002
    idx = var39003
    while idx - 1:
        _4196 = mem[64]
        mem[64] = mem[64] + 128
        mem[64] = mem[64] + 96
        mem[(64 * ('cd', 68).length) + 288] = 0
        mem[(64 * ('cd', 68).length) + 320] = 0
        mem[(64 * ('cd', 68).length) + 352] = 0
        mem[_4196] = (64 * ('cd', 68).length) + 288
        mem[64] = mem[64] + 96
        mem[(64 * ('cd', 68).length) + 384] = 0
        mem[(64 * ('cd', 68).length) + 416] = 0
        mem[(64 * ('cd', 68).length) + 448] = 0
        mem[_4196 + 32] = (64 * ('cd', 68).length) + 384
        mem[64] = mem[64] + 96
        mem[(64 * ('cd', 68).length) + 480] = 0
        mem[(64 * ('cd', 68).length) + 512] = 0
        mem[(64 * ('cd', 68).length) + 544] = 0
        mem[_4196 + 64] = (64 * ('cd', 68).length) + 480
        mem[64] = mem[64] + 96
        mem[(64 * ('cd', 68).length) + 576] = 0
        mem[(64 * ('cd', 68).length) + 608] = 0
        mem[(64 * ('cd', 68).length) + 640] = 0
        mem[_4196 + 96] = (64 * ('cd', 68).length) + 576
        mem[s + 32] = _4196
        s = _4196
        s = _4196
        s = s + 32
        idx = idx - 1
        continue 
    _4197 = mem[96]
    require mem[96] <= test266151307()
    _4201 = mem[64]
    mem[mem[64]] = mem[96]
    if not _4197:
        _4206 = mem[96]
        require mem[96] <= test266151307()
        mem[mem[64] + (32 * _4197) + 32] = mem[96]
        mem[64] = mem[64] + (32 * _4197) + (32 * mem[96]) + 64
        if not mem[96]:
            _5112 = mem[96]
            idx = 0
            while idx < _5112:
                require idx < mem[96]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(cd[36]), 0, mem[(32 * idx) + 128]
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5163 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _5199 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                require return_data.size >= 96
                _5270 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5270] = mem[_5163]
                mem[_5270 + 32] = mem[_5163 + 32]
                mem[_5270 + 64] = mem[_5163 + 64]
                mem[_5199] = _5270
                require return_data.size - 96 >= 96
                _5372 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5372] = mem[_5163 + 96]
                mem[_5372 + 32] = mem[_5163 + 128]
                mem[_5372 + 64] = mem[_5163 + 160]
                mem[_5199 + 32] = _5372
                require return_data.size - 192 >= 96
                _5455 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5455] = mem[_5163 + 192]
                mem[_5455 + 32] = mem[_5163 + 224]
                mem[_5455 + 64] = mem[_5163 + 256]
                mem[_5199 + 64] = _5455
                require return_data.size - 288 >= 96
                _5558 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5558] = mem[_5163 + 288]
                mem[_5558 + 32] = mem[_5163 + 320]
                mem[_5558 + 64] = mem[_5163 + 352]
                mem[_5199 + 96] = _5558
                require idx < mem[(32 * ('cd', 68).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _5199
                require idx < mem[96]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(cd[36]), 1, mem[(32 * idx) + 128]
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5663 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _5686 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                require return_data.size >= 96
                _5718 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5718] = mem[_5663]
                mem[_5718 + 32] = mem[_5663 + 32]
                mem[_5718 + 64] = mem[_5663 + 64]
                mem[_5686] = _5718
                require return_data.size - 96 >= 96
                _5748 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5748] = mem[_5663 + 96]
                mem[_5748 + 32] = mem[_5663 + 128]
                mem[_5748 + 64] = mem[_5663 + 160]
                mem[_5686 + 32] = _5748
                require return_data.size - 192 >= 96
                _5768 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5768] = mem[_5663 + 192]
                mem[_5768 + 32] = mem[_5663 + 224]
                mem[_5768 + 64] = mem[_5663 + 256]
                mem[_5686 + 64] = _5768
                require return_data.size - 288 >= 96
                _5799 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5799] = mem[_5663 + 288]
                mem[_5799 + 32] = mem[_5663 + 320]
                mem[_5799 + 64] = mem[_5663 + 352]
                mem[_5686 + 96] = _5799
                require idx < mem[_4201]
                mem[(32 * idx) + _4201 + 32] = _5686
                require idx < mem[96]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args address(cd[36]), 2, mem[(32 * idx) + 128]
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5850 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _5861 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                require return_data.size >= 96
                _5879 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5879] = mem[_5850]
                mem[_5879 + 32] = mem[_5850 + 32]
                mem[_5879 + 64] = mem[_5850 + 64]
                mem[_5861] = _5879
                require return_data.size - 96 >= 96
                _5909 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5909] = mem[_5850 + 96]
                mem[_5909 + 32] = mem[_5850 + 128]
                mem[_5909 + 64] = mem[_5850 + 160]
                mem[_5861 + 32] = _5909
                require return_data.size - 192 >= 96
                _5929 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5929] = mem[_5850 + 192]
                mem[_5929 + 32] = mem[_5850 + 224]
                mem[_5929 + 64] = mem[_5850 + 256]
                mem[_5861 + 64] = _5929
                require return_data.size - 288 >= 96
                _5960 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_5960] = mem[_5850 + 288]
                mem[_5960 + 32] = mem[_5850 + 320]
                mem[_5960 + 64] = mem[_5850 + 352]
                mem[_5861 + 96] = _5960
                require idx < mem[_4201 + (32 * _4197) + 32]
                mem[(32 * idx) + _4201 + (32 * _4197) + 64] = _5861
                _5112 = mem[96]
                idx = idx + 1
                continue 
            _5131 = mem[64]
            mem[mem[64]] = 96
            _5146 = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + 96] = mem[(32 * ('cd', 68).length) + 128]
            idx = 0
            s = (32 * ('cd', 68).length) + 160
            t = mem[64] + 128
            while idx < _5146:
                _6040 = mem[s]
                _6041 = mem[mem[s]]
                mem[t] = mem[mem[mem[s]]]
                mem[t + 32] = mem[_6041 + 32]
                mem[t + 64] = mem[_6041 + 64]
                _6059 = mem[_6040 + 32]
                mem[t + 96] = mem[mem[_6040 + 32]]
                mem[t + 128] = mem[_6059 + 32]
                mem[t + 160] = mem[_6059 + 64]
                _6080 = mem[_6040 + 64]
                mem[t + 192] = mem[mem[_6040 + 64]]
                mem[t + 224] = mem[_6080 + 32]
                mem[t + 256] = mem[_6080 + 64]
                _6110 = mem[_6040 + 96]
                mem[t + 288] = mem[mem[_6040 + 96]]
                mem[t + 320] = mem[_6110 + 32]
                mem[t + 352] = mem[_6110 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 384
                continue 
            mem[_5131 + 32] = (384 * _5146) + 128
            _6058 = mem[_4201]
            mem[_5131 + (384 * _5146) + 128] = mem[_4201]
            idx = 0
            s = _4201 + 32
            t = _5131 + (384 * _5146) + 160
            while idx < _6058:
                _6730 = mem[s]
                _6731 = mem[mem[s]]
                mem[t] = mem[mem[mem[s]]]
                mem[t + 32] = mem[_6731 + 32]
                mem[t + 64] = mem[_6731 + 64]
                _6749 = mem[_6730 + 32]
                mem[t + 96] = mem[mem[_6730 + 32]]
                mem[t + 128] = mem[_6749 + 32]
                mem[t + 160] = mem[_6749 + 64]
                _6770 = mem[_6730 + 64]
                mem[t + 192] = mem[mem[_6730 + 64]]
                mem[t + 224] = mem[_6770 + 32]
                mem[t + 256] = mem[_6770 + 64]
                _6800 = mem[_6730 + 96]
                mem[t + 288] = mem[mem[_6730 + 96]]
                mem[t + 320] = mem[_6800 + 32]
                mem[t + 352] = mem[_6800 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 384
                continue 
            mem[_5131 + 64] = (384 * _5146) + (384 * _6058) + 160
            _6748 = mem[_4201 + (32 * _4197) + 32]
            mem[_5131 + (384 * _5146) + (384 * _6058) + 160] = mem[_4201 + (32 * _4197) + 32]
            idx = 0
            s = _4201 + (32 * _4197) + 64
            t = _5131 + (384 * _5146) + (384 * _6058) + 192
            while idx < _6748:
                _7365 = mem[s]
                _7366 = mem[mem[s]]
                mem[t] = mem[mem[mem[s]]]
                mem[t + 32] = mem[_7366 + 32]
                mem[t + 64] = mem[_7366 + 64]
                _7394 = mem[_7365 + 32]
                mem[t + 96] = mem[mem[_7365 + 32]]
                mem[t + 128] = mem[_7394 + 32]
                mem[t + 160] = mem[_7394 + 64]
                _7413 = mem[_7365 + 64]
                mem[t + 192] = mem[mem[_7365 + 64]]
                mem[t + 224] = mem[_7413 + 32]
                mem[t + 256] = mem[_7413 + 64]
                _7438 = mem[_7365 + 96]
                mem[t + 288] = mem[mem[_7365 + 96]]
                mem[t + 320] = mem[_7438 + 32]
                mem[t + 352] = mem[_7438 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 384
                continue 
            return memory
              from mem[64]
               len _5131 + (384 * _5146) + (384 * _6058) + (384 * _6748) + -mem[64] + 192
        mem[_4201 + (32 * _4197) + (32 * mem[96]) + 192] = 0
        mem[_4201 + (32 * _4197) + (32 * mem[96]) + 224] = 0
        mem[_4201 + (32 * _4197) + (32 * mem[96]) + 256] = 0
        mem[_4201 + (32 * _4197) + (32 * mem[96]) + 64] = _4201 + (32 * _4197) + (32 * mem[96]) + 192
        mem[_4201 + (32 * _4197) + (32 * _4206) + 288] = 0
        mem[_4201 + (32 * _4197) + (32 * _4206) + 320] = 0
        mem[_4201 + (32 * _4197) + (32 * _4206) + 352] = 0
        mem[_4201 + (32 * _4197) + (32 * _4206) + 96] = _4201 + (32 * _4197) + (32 * _4206) + 288
        mem[_4201 + (32 * _4197) + (32 * _4206) + 384] = 0
        mem[_4201 + (32 * _4197) + (32 * _4206) + 416] = 0
        mem[_4201 + (32 * _4197) + (32 * _4206) + 448] = 0
        mem[_4201 + (32 * _4197) + (32 * _4206) + 128] = _4201 + (32 * _4197) + (32 * _4206) + 384
        mem[64] = _4201 + (32 * _4197) + (32 * _4206) + 576
        mem[_4201 + (32 * _4197) + (32 * _4206) + 480] = 0
        mem[_4201 + (32 * _4197) + (32 * _4206) + 512] = 0
        mem[_4201 + (32 * _4197) + (32 * _4206) + 544] = 0
        mem[_4201 + (32 * _4197) + (32 * _4206) + 160] = _4201 + (32 * _4197) + (32 * _4206) + 480
        mem[var59002] = _4201 + (32 * _4197) + (32 * _4206) + 64
        s = _4201 + (32 * _4197) + (32 * _4206) + 64
        s = _4201 + (32 * _4197) + (32 * _4206) + 64
        s = var59002
        idx = var59003
        while idx - 1:
            _6832 = mem[64]
            mem[64] = mem[64] + 128
            mem[64] = mem[64] + 96
            mem[_4201 + (32 * _4197) + (32 * _4206) + 192] = 0
            mem[_4201 + (32 * _4197) + (32 * _4206) + 224] = 0
            mem[_4201 + (32 * _4197) + (32 * _4206) + 256] = 0
            mem[_6832] = _4201 + (32 * _4197) + (32 * _4206) + 192
            mem[64] = mem[64] + 96
            mem[_4201 + (32 * _4197) + (32 * _4206) + 288] = 0
            mem[_4201 + (32 * _4197) + (32 * _4206) + 320] = 0
            mem[_4201 + (32 * _4197) + (32 * _4206) + 352] = 0
            mem[_6832 + 32] = _4201 + (32 * _4197) + (32 * _4206) + 288
            mem[64] = mem[64] + 96
            mem[_4201 + (32 * _4197) + (32 * _4206) + 384] = 0
            mem[_4201 + (32 * _4197) + (32 * _4206) + 416] = 0
            mem[_4201 + (32 * _4197) + (32 * _4206) + 448] = 0
            mem[_6832 + 64] = _4201 + (32 * _4197) + (32 * _4206) + 384
            mem[64] = mem[64] + 96
            mem[_4201 + (32 * _4197) + (32 * _4206) + 480] = 0
            mem[_4201 + (32 * _4197) + (32 * _4206) + 512] = 0
            mem[_4201 + (32 * _4197) + (32 * _4206) + 544] = 0
            mem[_6832 + 96] = _4201 + (32 * _4197) + (32 * _4206) + 480
            mem[s + 32] = _6832
            s = _6832
            s = _6832
            s = s + 32
            idx = idx - 1
            continue 
        _7358 = mem[96]
        idx = 0
        while idx < _7358:
            require idx < mem[96]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(cd[36]), 0, mem[(32 * idx) + 128]
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7428 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _7468 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            require return_data.size >= 96
            _7535 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7535] = mem[_7428]
            mem[_7535 + 32] = mem[_7428 + 32]
            mem[_7535 + 64] = mem[_7428 + 64]
            mem[_7468] = _7535
            require return_data.size - 96 >= 96
            _7618 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7618] = mem[_7428 + 96]
            mem[_7618 + 32] = mem[_7428 + 128]
            mem[_7618 + 64] = mem[_7428 + 160]
            mem[_7468 + 32] = _7618
            require return_data.size - 192 >= 96
            _7661 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7661] = mem[_7428 + 192]
            mem[_7661 + 32] = mem[_7428 + 224]
            mem[_7661 + 64] = mem[_7428 + 256]
            mem[_7468 + 64] = _7661
            require return_data.size - 288 >= 96
            _7702 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7702] = mem[_7428 + 288]
            mem[_7702 + 32] = mem[_7428 + 320]
            mem[_7702 + 64] = mem[_7428 + 352]
            mem[_7468 + 96] = _7702
            require idx < mem[(32 * ('cd', 68).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _7468
            require idx < mem[96]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(cd[36]), 1, mem[(32 * idx) + 128]
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7744 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _7747 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            require return_data.size >= 96
            _7755 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7755] = mem[_7744]
            mem[_7755 + 32] = mem[_7744 + 32]
            mem[_7755 + 64] = mem[_7744 + 64]
            mem[_7747] = _7755
            require return_data.size - 96 >= 96
            _7772 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7772] = mem[_7744 + 96]
            mem[_7772 + 32] = mem[_7744 + 128]
            mem[_7772 + 64] = mem[_7744 + 160]
            mem[_7747 + 32] = _7772
            require return_data.size - 192 >= 96
            _7785 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7785] = mem[_7744 + 192]
            mem[_7785 + 32] = mem[_7744 + 224]
            mem[_7785 + 64] = mem[_7744 + 256]
            mem[_7747 + 64] = _7785
            require return_data.size - 288 >= 96
            _7801 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7801] = mem[_7744 + 288]
            mem[_7801 + 32] = mem[_7744 + 320]
            mem[_7801 + 64] = mem[_7744 + 352]
            mem[_7747 + 96] = _7801
            require idx < mem[_4201]
            mem[(32 * idx) + _4201 + 32] = _7747
            require idx < mem[96]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(cd[36]), 2, mem[(32 * idx) + 128]
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7836 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _7839 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            require return_data.size >= 96
            _7847 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7847] = mem[_7836]
            mem[_7847 + 32] = mem[_7836 + 32]
            mem[_7847 + 64] = mem[_7836 + 64]
            mem[_7839] = _7847
            require return_data.size - 96 >= 96
            _7864 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7864] = mem[_7836 + 96]
            mem[_7864 + 32] = mem[_7836 + 128]
            mem[_7864 + 64] = mem[_7836 + 160]
            mem[_7839 + 32] = _7864
            require return_data.size - 192 >= 96
            _7877 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7877] = mem[_7836 + 192]
            mem[_7877 + 32] = mem[_7836 + 224]
            mem[_7877 + 64] = mem[_7836 + 256]
            mem[_7839 + 64] = _7877
            require return_data.size - 288 >= 96
            _7893 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7893] = mem[_7836 + 288]
            mem[_7893 + 32] = mem[_7836 + 320]
            mem[_7893 + 64] = mem[_7836 + 352]
            mem[_7839 + 96] = _7893
            require idx < mem[_4201 + (32 * _4197) + 32]
            mem[(32 * idx) + _4201 + (32 * _4197) + 64] = _7839
            _7358 = mem[96]
            idx = idx + 1
            continue 
        _7382 = mem[64]
        mem[mem[64]] = 96
        _7406 = mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + 96] = mem[(32 * ('cd', 68).length) + 128]
        idx = 0
        s = (32 * ('cd', 68).length) + 160
        t = mem[64] + 128
        while idx < _7406:
            _7923 = mem[s]
            _7924 = mem[mem[s]]
            mem[t] = mem[mem[mem[s]]]
            mem[t + 32] = mem[_7924 + 32]
            mem[t + 64] = mem[_7924 + 64]
            _7940 = mem[_7923 + 32]
            mem[t + 96] = mem[mem[_7923 + 32]]
            mem[t + 128] = mem[_7940 + 32]
            mem[t + 160] = mem[_7940 + 64]
            _7958 = mem[_7923 + 64]
            mem[t + 192] = mem[mem[_7923 + 64]]
            mem[t + 224] = mem[_7958 + 32]
            mem[t + 256] = mem[_7958 + 64]
            _7986 = mem[_7923 + 96]
            mem[t + 288] = mem[mem[_7923 + 96]]
            mem[t + 320] = mem[_7986 + 32]
            mem[t + 352] = mem[_7986 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        mem[_7382 + 32] = (384 * _7406) + 128
        _7939 = mem[_4201]
        mem[_7382 + (384 * _7406) + 128] = mem[_4201]
        idx = 0
        s = _4201 + 32
        t = _7382 + (384 * _7406) + 160
        while idx < _7939:
            _8217 = mem[s]
            _8218 = mem[mem[s]]
            mem[t] = mem[mem[mem[s]]]
            mem[t + 32] = mem[_8218 + 32]
            mem[t + 64] = mem[_8218 + 64]
            _8234 = mem[_8217 + 32]
            mem[t + 96] = mem[mem[_8217 + 32]]
            mem[t + 128] = mem[_8234 + 32]
            mem[t + 160] = mem[_8234 + 64]
            _8252 = mem[_8217 + 64]
            mem[t + 192] = mem[mem[_8217 + 64]]
            mem[t + 224] = mem[_8252 + 32]
            mem[t + 256] = mem[_8252 + 64]
            _8280 = mem[_8217 + 96]
            mem[t + 288] = mem[mem[_8217 + 96]]
            mem[t + 320] = mem[_8280 + 32]
            mem[t + 352] = mem[_8280 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        mem[_7382 + 64] = (384 * _7406) + (384 * _7939) + 160
        _8233 = mem[_4201 + (32 * _4197) + 32]
        mem[_7382 + (384 * _7406) + (384 * _7939) + 160] = mem[_4201 + (32 * _4197) + 32]
        idx = 0
        s = _4201 + (32 * _4197) + 64
        t = _7382 + (384 * _7406) + (384 * _7939) + 192
        while idx < _8233:
            _8456 = mem[s]
            _8457 = mem[mem[s]]
            mem[t] = mem[mem[mem[s]]]
            mem[t + 32] = mem[_8457 + 32]
            mem[t + 64] = mem[_8457 + 64]
            _8476 = mem[_8456 + 32]
            mem[t + 96] = mem[mem[_8456 + 32]]
            mem[t + 128] = mem[_8476 + 32]
            mem[t + 160] = mem[_8476 + 64]
            _8491 = mem[_8456 + 64]
            mem[t + 192] = mem[mem[_8456 + 64]]
            mem[t + 224] = mem[_8491 + 32]
            mem[t + 256] = mem[_8491 + 64]
            _8506 = mem[_8456 + 96]
            mem[t + 288] = mem[mem[_8456 + 96]]
            mem[t + 320] = mem[_8506 + 32]
            mem[t + 352] = mem[_8506 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        return memory
          from mem[64]
           len _7382 + (384 * _7406) + (384 * _7939) + (384 * _8233) + -mem[64] + 192
    mem[mem[64] + (32 * _4197) + 160] = 0
    mem[mem[64] + (32 * _4197) + 192] = 0
    mem[mem[64] + (32 * _4197) + 224] = 0
    mem[mem[64] + (32 * _4197) + 32] = mem[64] + (32 * _4197) + 160
    mem[mem[64] + (32 * _4197) + 256] = 0
    mem[mem[64] + (32 * _4197) + 288] = 0
    mem[mem[64] + (32 * _4197) + 320] = 0
    mem[mem[64] + (32 * _4197) + 64] = mem[64] + (32 * _4197) + 256
    mem[mem[64] + (32 * _4197) + 352] = 0
    mem[mem[64] + (32 * _4197) + 384] = 0
    mem[mem[64] + (32 * _4197) + 416] = 0
    mem[mem[64] + (32 * _4197) + 96] = mem[64] + (32 * _4197) + 352
    mem[64] = mem[64] + (32 * _4197) + 544
    mem[_4201 + (32 * _4197) + 448] = 0
    mem[_4201 + (32 * _4197) + 480] = 0
    mem[_4201 + (32 * _4197) + 512] = 0
    mem[_4201 + (32 * _4197) + 128] = _4201 + (32 * _4197) + 448
    mem[var57002] = _4201 + (32 * _4197) + 32
    s = _4201 + (32 * _4197) + 32
    s = _4201 + (32 * _4197) + 32
    s = var57002
    idx = var57003
    while idx - 1:
        _6833 = mem[64]
        mem[64] = mem[64] + 128
        mem[64] = mem[64] + 96
        mem[_4201 + (32 * _4197) + 160] = 0
        mem[_4201 + (32 * _4197) + 192] = 0
        mem[_4201 + (32 * _4197) + 224] = 0
        mem[_6833] = _4201 + (32 * _4197) + 160
        mem[64] = mem[64] + 96
        mem[_4201 + (32 * _4197) + 256] = 0
        mem[_4201 + (32 * _4197) + 288] = 0
        mem[_4201 + (32 * _4197) + 320] = 0
        mem[_6833 + 32] = _4201 + (32 * _4197) + 256
        mem[64] = mem[64] + 96
        mem[_4201 + (32 * _4197) + 352] = 0
        mem[_4201 + (32 * _4197) + 384] = 0
        mem[_4201 + (32 * _4197) + 416] = 0
        mem[_6833 + 64] = _4201 + (32 * _4197) + 352
        mem[64] = mem[64] + 96
        mem[_4201 + (32 * _4197) + 448] = 0
        mem[_4201 + (32 * _4197) + 480] = 0
        mem[_4201 + (32 * _4197) + 512] = 0
        mem[_6833 + 96] = _4201 + (32 * _4197) + 448
        mem[s + 32] = _6833
        s = _6833
        s = _6833
        s = s + 32
        idx = idx - 1
        continue 
    _6834 = mem[96]
    require mem[96] <= test266151307()
    _6840 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _6834) + 32
    if not _6834:
        _7359 = mem[96]
        idx = 0
        while idx < _7359:
            require idx < mem[96]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(cd[36]), 0, mem[(32 * idx) + 128]
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7431 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _7472 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            require return_data.size >= 96
            _7539 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7539] = mem[_7431]
            mem[_7539 + 32] = mem[_7431 + 32]
            mem[_7539 + 64] = mem[_7431 + 64]
            mem[_7472] = _7539
            require return_data.size - 96 >= 96
            _7620 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7620] = mem[_7431 + 96]
            mem[_7620 + 32] = mem[_7431 + 128]
            mem[_7620 + 64] = mem[_7431 + 160]
            mem[_7472 + 32] = _7620
            require return_data.size - 192 >= 96
            _7662 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7662] = mem[_7431 + 192]
            mem[_7662 + 32] = mem[_7431 + 224]
            mem[_7662 + 64] = mem[_7431 + 256]
            mem[_7472 + 64] = _7662
            require return_data.size - 288 >= 96
            _7703 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7703] = mem[_7431 + 288]
            mem[_7703 + 32] = mem[_7431 + 320]
            mem[_7703 + 64] = mem[_7431 + 352]
            mem[_7472 + 96] = _7703
            require idx < mem[(32 * ('cd', 68).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _7472
            require idx < mem[96]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(cd[36]), 1, mem[(32 * idx) + 128]
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7745 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _7748 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            require return_data.size >= 96
            _7756 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7756] = mem[_7745]
            mem[_7756 + 32] = mem[_7745 + 32]
            mem[_7756 + 64] = mem[_7745 + 64]
            mem[_7748] = _7756
            require return_data.size - 96 >= 96
            _7773 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7773] = mem[_7745 + 96]
            mem[_7773 + 32] = mem[_7745 + 128]
            mem[_7773 + 64] = mem[_7745 + 160]
            mem[_7748 + 32] = _7773
            require return_data.size - 192 >= 96
            _7786 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7786] = mem[_7745 + 192]
            mem[_7786 + 32] = mem[_7745 + 224]
            mem[_7786 + 64] = mem[_7745 + 256]
            mem[_7748 + 64] = _7786
            require return_data.size - 288 >= 96
            _7802 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7802] = mem[_7745 + 288]
            mem[_7802 + 32] = mem[_7745 + 320]
            mem[_7802 + 64] = mem[_7745 + 352]
            mem[_7748 + 96] = _7802
            require idx < mem[_4201]
            mem[(32 * idx) + _4201 + 32] = _7748
            require idx < mem[96]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(cd[36]), 2, mem[(32 * idx) + 128]
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7837 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 384
            _7840 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            require return_data.size >= 96
            _7848 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7848] = mem[_7837]
            mem[_7848 + 32] = mem[_7837 + 32]
            mem[_7848 + 64] = mem[_7837 + 64]
            mem[_7840] = _7848
            require return_data.size - 96 >= 96
            _7865 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7865] = mem[_7837 + 96]
            mem[_7865 + 32] = mem[_7837 + 128]
            mem[_7865 + 64] = mem[_7837 + 160]
            mem[_7840 + 32] = _7865
            require return_data.size - 192 >= 96
            _7878 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7878] = mem[_7837 + 192]
            mem[_7878 + 32] = mem[_7837 + 224]
            mem[_7878 + 64] = mem[_7837 + 256]
            mem[_7840 + 64] = _7878
            require return_data.size - 288 >= 96
            _7894 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_7894] = mem[_7837 + 288]
            mem[_7894 + 32] = mem[_7837 + 320]
            mem[_7894 + 64] = mem[_7837 + 352]
            mem[_7840 + 96] = _7894
            require idx < mem[_6840]
            mem[(32 * idx) + _6840 + 32] = _7840
            _7359 = mem[96]
            idx = idx + 1
            continue 
        _7385 = mem[64]
        mem[mem[64]] = 96
        _7408 = mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + 96] = mem[(32 * ('cd', 68).length) + 128]
        idx = 0
        s = (32 * ('cd', 68).length) + 160
        t = mem[64] + 128
        while idx < _7408:
            _7925 = mem[s]
            _7926 = mem[mem[s]]
            mem[t] = mem[mem[mem[s]]]
            mem[t + 32] = mem[_7926 + 32]
            mem[t + 64] = mem[_7926 + 64]
            _7942 = mem[_7925 + 32]
            mem[t + 96] = mem[mem[_7925 + 32]]
            mem[t + 128] = mem[_7942 + 32]
            mem[t + 160] = mem[_7942 + 64]
            _7961 = mem[_7925 + 64]
            mem[t + 192] = mem[mem[_7925 + 64]]
            mem[t + 224] = mem[_7961 + 32]
            mem[t + 256] = mem[_7961 + 64]
            _7989 = mem[_7925 + 96]
            mem[t + 288] = mem[mem[_7925 + 96]]
            mem[t + 320] = mem[_7989 + 32]
            mem[t + 352] = mem[_7989 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        mem[_7385 + 32] = (384 * _7408) + 128
        _7941 = mem[_4201]
        mem[_7385 + (384 * _7408) + 128] = mem[_4201]
        idx = 0
        s = _4201 + 32
        t = _7385 + (384 * _7408) + 160
        while idx < _7941:
            _8219 = mem[s]
            _8220 = mem[mem[s]]
            mem[t] = mem[mem[mem[s]]]
            mem[t + 32] = mem[_8220 + 32]
            mem[t + 64] = mem[_8220 + 64]
            _8236 = mem[_8219 + 32]
            mem[t + 96] = mem[mem[_8219 + 32]]
            mem[t + 128] = mem[_8236 + 32]
            mem[t + 160] = mem[_8236 + 64]
            _8255 = mem[_8219 + 64]
            mem[t + 192] = mem[mem[_8219 + 64]]
            mem[t + 224] = mem[_8255 + 32]
            mem[t + 256] = mem[_8255 + 64]
            _8283 = mem[_8219 + 96]
            mem[t + 288] = mem[mem[_8219 + 96]]
            mem[t + 320] = mem[_8283 + 32]
            mem[t + 352] = mem[_8283 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        mem[_7385 + 64] = (384 * _7408) + (384 * _7941) + 160
        _8235 = mem[_6840]
        mem[_7385 + (384 * _7408) + (384 * _7941) + 160] = mem[_6840]
        idx = 0
        s = _6840 + 32
        t = _7385 + (384 * _7408) + (384 * _7941) + 192
        while idx < _8235:
            _8458 = mem[s]
            _8459 = mem[mem[s]]
            mem[t] = mem[mem[mem[s]]]
            mem[t + 32] = mem[_8459 + 32]
            mem[t + 64] = mem[_8459 + 64]
            _8478 = mem[_8458 + 32]
            mem[t + 96] = mem[mem[_8458 + 32]]
            mem[t + 128] = mem[_8478 + 32]
            mem[t + 160] = mem[_8478 + 64]
            _8492 = mem[_8458 + 64]
            mem[t + 192] = mem[mem[_8458 + 64]]
            mem[t + 224] = mem[_8492 + 32]
            mem[t + 256] = mem[_8492 + 64]
            _8507 = mem[_8458 + 96]
            mem[t + 288] = mem[mem[_8458 + 96]]
            mem[t + 320] = mem[_8507 + 32]
            mem[t + 352] = mem[_8507 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 384
            continue 
        return memory
          from mem[64]
           len _7385 + (384 * _7408) + (384 * _7941) + (384 * _8235) + -mem[64] + 192
    mem[_6840 + (32 * _6834) + 160] = 0
    mem[_6840 + (32 * _6834) + 192] = 0
    mem[_6840 + (32 * _6834) + 224] = 0
    mem[_6840 + (32 * _6834) + 32] = _6840 + (32 * _6834) + 160
    mem[_6840 + (32 * _6834) + 256] = 0
    mem[_6840 + (32 * _6834) + 288] = 0
    mem[_6840 + (32 * _6834) + 320] = 0
    mem[_6840 + (32 * _6834) + 64] = _6840 + (32 * _6834) + 256
    mem[_6840 + (32 * _6834) + 352] = 0
    mem[_6840 + (32 * _6834) + 384] = 0
    mem[_6840 + (32 * _6834) + 416] = 0
    mem[_6840 + (32 * _6834) + 96] = _6840 + (32 * _6834) + 352
    mem[64] = _6840 + (32 * _6834) + 544
    mem[_6840 + (32 * _6834) + 448] = 0
    mem[_6840 + (32 * _6834) + 480] = 0
    mem[_6840 + (32 * _6834) + 512] = 0
    mem[_6840 + (32 * _6834) + 128] = _6840 + (32 * _6834) + 448
    mem[var75002] = _6840 + (32 * _6834) + 32
    s = _6840 + (32 * _6834) + 32
    s = _6840 + (32 * _6834) + 32
    s = var75002
    idx = var75003
    while idx - 1:
        _8314 = mem[64]
        mem[64] = mem[64] + 128
        mem[64] = mem[64] + 96
        mem[_6840 + (32 * _6834) + 160] = 0
        mem[_6840 + (32 * _6834) + 192] = 0
        mem[_6840 + (32 * _6834) + 224] = 0
        mem[_8314] = _6840 + (32 * _6834) + 160
        mem[64] = mem[64] + 96
        mem[_6840 + (32 * _6834) + 256] = 0
        mem[_6840 + (32 * _6834) + 288] = 0
        mem[_6840 + (32 * _6834) + 320] = 0
        mem[_8314 + 32] = _6840 + (32 * _6834) + 256
        mem[64] = mem[64] + 96
        mem[_6840 + (32 * _6834) + 352] = 0
        mem[_6840 + (32 * _6834) + 384] = 0
        mem[_6840 + (32 * _6834) + 416] = 0
        mem[_8314 + 64] = _6840 + (32 * _6834) + 352
        mem[64] = mem[64] + 96
        mem[_6840 + (32 * _6834) + 448] = 0
        mem[_6840 + (32 * _6834) + 480] = 0
        mem[_6840 + (32 * _6834) + 512] = 0
        mem[_8314 + 96] = _6840 + (32 * _6834) + 448
        mem[s + 32] = _8314
        s = _8314
        s = _8314
        s = s + 32
        idx = idx - 1
        continue 
    _8453 = mem[96]
    idx = 0
    while idx < _8453:
        require idx < mem[96]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(cd[36]), 0, mem[(32 * idx) + 128]
        mem[mem[64] len 384] = ext_call.return_data[0 len 384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _8504 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 384
        _8525 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require return_data.size >= 96
        _8547 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_8547] = mem[_8504]
        mem[_8547 + 32] = mem[_8504 + 32]
        mem[_8547 + 64] = mem[_8504 + 64]
        mem[_8525] = _8547
        require return_data.size - 96 >= 96
        _8571 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_8571] = mem[_8504 + 96]
        mem[_8571 + 32] = mem[_8504 + 128]
        mem[_8571 + 64] = mem[_8504 + 160]
        mem[_8525 + 32] = _8571
        require return_data.size - 192 >= 96
        _8578 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_8578] = mem[_8504 + 192]
        mem[_8578 + 32] = mem[_8504 + 224]
        mem[_8578 + 64] = mem[_8504 + 256]
        mem[_8525 + 64] = _8578
        require return_data.size - 288 >= 96
        _8582 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_8582] = mem[_8504 + 288]
        mem[_8582 + 32] = mem[_8504 + 320]
        mem[_8582 + 64] = mem[_8504 + 352]
        mem[_8525 + 96] = _8582
        require idx < mem[(32 * ('cd', 68).length) + 128]
        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _8525
        require idx < mem[96]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(cd[36]), 1, mem[(32 * idx) + 128]
        mem[mem[64] len 384] = ext_call.return_data[0 len 384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _8591 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 384
        _8592 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require return_data.size >= 96
        _8593 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_8593] = mem[_8591]
        mem[_8593 + 32] = mem[_8591 + 32]
        mem[_8593 + 64] = mem[_8591 + 64]
        mem[_8592] = _8593
        require return_data.size - 96 >= 96
        _8597 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_8597] = mem[_8591 + 96]
        mem[_8597 + 32] = mem[_8591 + 128]
        mem[_8597 + 64] = mem[_8591 + 160]
        mem[_8592 + 32] = _8597
        require return_data.size - 192 >= 96
        _8601 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_8601] = mem[_8591 + 192]
        mem[_8601 + 32] = mem[_8591 + 224]
        mem[_8601 + 64] = mem[_8591 + 256]
        mem[_8592 + 64] = _8601
        require return_data.size - 288 >= 96
        _8605 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_8605] = mem[_8591 + 288]
        mem[_8605 + 32] = mem[_8591 + 320]
        mem[_8605 + 64] = mem[_8591 + 352]
        mem[_8592 + 96] = _8605
        require idx < mem[_4201]
        mem[(32 * idx) + _4201 + 32] = _8592
        require idx < mem[96]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).unsettledTrades(address arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(cd[36]), 2, mem[(32 * idx) + 128]
        mem[mem[64] len 384] = ext_call.return_data[0 len 384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _8614 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 384
        _8615 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require return_data.size >= 96
        _8616 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_8616] = mem[_8614]
        mem[_8616 + 32] = mem[_8614 + 32]
        mem[_8616 + 64] = mem[_8614 + 64]
        mem[_8615] = _8616
        require return_data.size - 96 >= 96
        _8620 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_8620] = mem[_8614 + 96]
        mem[_8620 + 32] = mem[_8614 + 128]
        mem[_8620 + 64] = mem[_8614 + 160]
        mem[_8615 + 32] = _8620
        require return_data.size - 192 >= 96
        _8624 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_8624] = mem[_8614 + 192]
        mem[_8624 + 32] = mem[_8614 + 224]
        mem[_8624 + 64] = mem[_8614 + 256]
        mem[_8615 + 64] = _8624
        require return_data.size - 288 >= 96
        _8628 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_8628] = mem[_8614 + 288]
        mem[_8628 + 32] = mem[_8614 + 320]
        mem[_8628 + 64] = mem[_8614 + 352]
        mem[_8615 + 96] = _8628
        require idx < mem[_6840]
        mem[(32 * idx) + _6840 + 32] = _8615
        _8453 = mem[96]
        idx = idx + 1
        continue 
    _8470 = mem[64]
    mem[mem[64]] = 96
    _8488 = mem[(32 * ('cd', 68).length) + 128]
    mem[mem[64] + 96] = mem[(32 * ('cd', 68).length) + 128]
    idx = 0
    s = (32 * ('cd', 68).length) + 160
    t = mem[64] + 128
    while idx < _8488:
        _8633 = mem[s]
        _8634 = mem[mem[s]]
        mem[t] = mem[mem[mem[s]]]
        mem[t + 32] = mem[_8634 + 32]
        mem[t + 64] = mem[_8634 + 64]
        _8639 = mem[_8633 + 32]
        mem[t + 96] = mem[mem[_8633 + 32]]
        mem[t + 128] = mem[_8639 + 32]
        mem[t + 160] = mem[_8639 + 64]
        _8645 = mem[_8633 + 64]
        mem[t + 192] = mem[mem[_8633 + 64]]
        mem[t + 224] = mem[_8645 + 32]
        mem[t + 256] = mem[_8645 + 64]
        _8654 = mem[_8633 + 96]
        mem[t + 288] = mem[mem[_8633 + 96]]
        mem[t + 320] = mem[_8654 + 32]
        mem[t + 352] = mem[_8654 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 384
        continue 
    mem[_8470 + 32] = (384 * _8488) + 128
    _8638 = mem[_4201]
    mem[_8470 + (384 * _8488) + 128] = mem[_4201]
    idx = 0
    s = _4201 + 32
    t = _8470 + (384 * _8488) + 160
    while idx < _8638:
        _8687 = mem[s]
        _8688 = mem[mem[s]]
        mem[t] = mem[mem[mem[s]]]
        mem[t + 32] = mem[_8688 + 32]
        mem[t + 64] = mem[_8688 + 64]
        _8693 = mem[_8687 + 32]
        mem[t + 96] = mem[mem[_8687 + 32]]
        mem[t + 128] = mem[_8693 + 32]
        mem[t + 160] = mem[_8693 + 64]
        _8699 = mem[_8687 + 64]
        mem[t + 192] = mem[mem[_8687 + 64]]
        mem[t + 224] = mem[_8699 + 32]
        mem[t + 256] = mem[_8699 + 64]
        _8708 = mem[_8687 + 96]
        mem[t + 288] = mem[mem[_8687 + 96]]
        mem[t + 320] = mem[_8708 + 32]
        mem[t + 352] = mem[_8708 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 384
        continue 
    mem[_8470 + 64] = (384 * _8488) + (384 * _8638) + 160
    _8692 = mem[_6840]
    mem[_8470 + (384 * _8488) + (384 * _8638) + 160] = mem[_6840]
    idx = 0
    s = _6840 + 32
    t = _8470 + (384 * _8488) + (384 * _8638) + 192
    while idx < _8692:
        _8723 = mem[s]
        _8724 = mem[mem[s]]
        mem[t] = mem[mem[mem[s]]]
        mem[t + 32] = mem[_8724 + 32]
        mem[t + 64] = mem[_8724 + 64]
        _8729 = mem[_8723 + 32]
        mem[t + 96] = mem[mem[_8723 + 32]]
        mem[t + 128] = mem[_8729 + 32]
        mem[t + 160] = mem[_8729 + 64]
        _8733 = mem[_8723 + 64]
        mem[t + 192] = mem[mem[_8723 + 64]]
        mem[t + 224] = mem[_8733 + 32]
        mem[t + 256] = mem[_8733 + 64]
        _8737 = mem[_8723 + 96]
        mem[t + 288] = mem[mem[_8723 + 96]]
        mem[t + 320] = mem[_8737 + 32]
        mem[t + 352] = mem[_8737 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 384
        continue 
    return memory
      from mem[64]
       len _8470 + (384 * _8488) + (384 * _8638) + (384 * _8692) + -mem[64] + 192
}



}
