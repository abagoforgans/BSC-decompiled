contract main {




// =====================  Runtime code  =====================


uint16 stor0;
uint16 stor0; offset 16
uint32 stor0; offset 129
uint32 stor0; offset 32
uint32 stor0; offset 64
uint32 stor0; offset 96
uint32 stor0; offset 128
uint32 stor0; offset 160
uint32 stor0; offset 192
uint32 stor0; offset 224
uint256 stor0;
uint128 stor1; offset 160
address stor1;
uint256 stor1;
uint128 stor2; offset 160
address stor2;
uint256 stor2;
uint8 stor3; offset 216
uint8 stor3; offset 224
uint8 stor3; offset 232
uint256 totalContributed;
uint32 sub_776b2609;
uint32 totalContributors; offset 32
mapping of uint256 amountContributed;

function totalContributed() {
    return totalContributed
}

function amountContributed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return amountContributed[arg1]
}

function canceled() {
    return bool(uint8(stor3.field_224))
}

function sub_776b2609(?) {
    return sub_776b2609
}

function finalized() {
    return bool(uint8(stor3.field_216))
}

function totalContributors() {
    return totalContributors
}

function _fallback() payable {
    revert
}

function claim() {
    if not amountContributed[msg.sender]:
        revert with 0, 'No tokens to claim'
    if not uint8(stor3.field_216):
        revert with 0, 'Not finalized yet'
    if amountContributed[msg.sender] and Mask(96, 0, stor2.field_160) > -1 / amountContributed[msg.sender]:
        revert with 'NH{q', 17
    amountContributed[msg.sender] = 0
    call address(stor2.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, amountContributed[msg.sender] * Mask(96, 0, stor2.field_160) / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function cancel() {
    if address(stor1.field_0) != msg.sender:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not creator or comumunity cancel timer>0.'
    if uint8(stor3.field_216):
        revert with 0, 'Already finalized or canceled'
    if uint8(stor3.field_224):
        revert with 0, 'Already finalized or canceled'
    uint8(stor3.field_224) = 1
    staticcall address(stor2.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(stor2.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args address(stor1.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uint32(stor0.field_32) = uint32(block.timestamp)
    emit 0x338bfbda 
}

function removeLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor1.field_0) != msg.sender:
        revert with 0, 'creator only'
    if arg1 <= 0:
        revert with 0, 'Percent not (0,100]'
    if arg1 > 100:
        revert with 0, 'Percent not (0,100]'
    staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, address(stor2.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg1 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, ext_call.return_data[0] * arg1 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(stor2.field_0), ext_call.return_data[0] * arg1 / 100, 0, 0, address(stor1.field_0), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function refund() {
    if uint8(stor3.field_232):
        revert with 0, 'Re-entrancy guard'
    uint8(stor3.field_232) = 1
    if block.timestamp < sub_776b2609:
        if not uint8(stor3.field_224):
            if block.timestamp <= uint32(stor0.field_32):
                revert with 0, 'Not canceled/failed'
            if uint32(stor0.field_128) > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
                revert with 'NH{q', 17
            if totalContributed >= 10^16 * uint32(stor0.field_128):
                revert with 0, 'Not canceled/failed'
    else:
        if not uint8(stor3.field_224):
            if address(stor1.field_0) != msg.sender:
                if msg.sender != this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not creator or comumunity cancel timer>0.'
            if uint8(stor3.field_216):
                revert with 0, 'Already finalized or canceled'
            if uint8(stor3.field_224):
                revert with 0, 'Already finalized or canceled'
            uint8(stor3.field_224) = 1
            staticcall address(stor2.field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call address(stor2.field_0).0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor1.field_0), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            uint32(stor0.field_32) = uint32(block.timestamp)
            emit 0x338bfbda 
    if not amountContributed[msg.sender]:
        revert with 0, 'No amount contributed'
    amountContributed[msg.sender] = 0
    call msg.sender with:
       value amountContributed[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor3.field_232) = 0
}

function tokensRequired() {
    if uint32(stor0.field_192) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
        revert with 'NH{q', 17
    if uint32(stor0.field_128) > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
        revert with 'NH{q', 17
    if 100 < uint16(stor0.field_0):
        revert with 'NH{q', 17
    if 10^16 * uint32(stor0.field_128) and uint16(stor0.field_16) > -1 / 10^16 * uint32(stor0.field_128):
        revert with 'NH{q', 17
    if 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) and uint16(-uint16(stor0.field_0) + 100) > -1 / 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16):
        revert with 'NH{q', 17
    if 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if 997 * 10^18 > !(1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000):
        revert with 'NH{q', 17
    if Mask(96, 0, stor1.field_160) and (1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000) + 997 * 10^18 > -1 / Mask(96, 0, stor1.field_160):
        revert with 'NH{q', 17
    if 10^14 * uint32(stor0.field_192) <= 10^16 * uint32(stor0.field_128) / 100:
        if 10^14 * uint32(stor0.field_192) and Mask(96, 0, stor2.field_160) > -1 / 10^14 * uint32(stor0.field_192):
            revert with 'NH{q', 17
        if 10^16 * uint32(stor0.field_128) and Mask(96, 0, stor2.field_160) > -1 / 10^16 * uint32(stor0.field_128):
            revert with 'NH{q', 17
        if 10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160) > !(10^14 * uint32(stor0.field_192) * Mask(96, 0, stor2.field_160)):
            revert with 'NH{q', 17
        if (997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18 > !((10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160)) + (10^14 * uint32(stor0.field_192) * Mask(96, 0, stor2.field_160)) / 10^18):
            revert with 'NH{q', 17
        return (((997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18) + ((10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160)) + (10^14 * uint32(stor0.field_192) * Mask(96, 0, stor2.field_160)) / 10^18))
    if 10^16 * uint32(stor0.field_128) / 100 and Mask(96, 0, stor2.field_160) > -1 / 10^16 * uint32(stor0.field_128) / 100:
        revert with 'NH{q', 17
    if 10^16 * uint32(stor0.field_128) and Mask(96, 0, stor2.field_160) > -1 / 10^16 * uint32(stor0.field_128):
        revert with 'NH{q', 17
    if 10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160) > !(10^16 * uint32(stor0.field_128) / 100 * Mask(96, 0, stor2.field_160)):
        revert with 'NH{q', 17
    if (997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18 > !((10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160)) + (10^16 * uint32(stor0.field_128) / 100 * Mask(96, 0, stor2.field_160)) / 10^18):
        revert with 'NH{q', 17
    return (((997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18) + ((10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160)) + (10^16 * uint32(stor0.field_128) / 100 * Mask(96, 0, stor2.field_160)) / 10^18))
}

function sub_afbf80be(?) {
    require not uint32(stor0.field_128)
    uint256(stor0.field_0) = arg1
    uint256(stor1.field_0) = arg2
    uint256(stor2.field_0) = arg3
    if uint32(stor0.field_192) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
        revert with 'NH{q', 17
    if uint32(stor0.field_128) > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
        revert with 'NH{q', 17
    if 100 < uint16(stor0.field_0):
        revert with 'NH{q', 17
    if 10^16 * uint32(stor0.field_128) and uint16(stor0.field_16) > -1 / 10^16 * uint32(stor0.field_128):
        revert with 'NH{q', 17
    if 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) and uint16(-uint16(stor0.field_0) + 100) > -1 / 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16):
        revert with 'NH{q', 17
    if 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if 997 * 10^18 > !(1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000):
        revert with 'NH{q', 17
    if Mask(96, 0, stor1.field_160) and (1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000) + 997 * 10^18 > -1 / Mask(96, 0, stor1.field_160):
        revert with 'NH{q', 17
    if 10^14 * uint32(stor0.field_192) <= 10^16 * uint32(stor0.field_128) / 100:
        if 10^14 * uint32(stor0.field_192) and Mask(96, 0, stor2.field_160) > -1 / 10^14 * uint32(stor0.field_192):
            revert with 'NH{q', 17
        if 10^16 * uint32(stor0.field_128) and Mask(96, 0, stor2.field_160) > -1 / 10^16 * uint32(stor0.field_128):
            revert with 'NH{q', 17
        if 10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160) > !(10^14 * uint32(stor0.field_192) * Mask(96, 0, stor2.field_160)):
            revert with 'NH{q', 17
        if (997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18 > !((10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160)) + (10^14 * uint32(stor0.field_192) * Mask(96, 0, stor2.field_160)) / 10^18):
            revert with 'NH{q', 17
        staticcall address(stor2.field_0).0x70a08231 with:
                gas gas_remaining wei
               args address(stor1.field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ((997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18) + ((10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160)) + (10^14 * uint32(stor0.field_192) * Mask(96, 0, stor2.field_160)) / 10^18):
            revert with 0, 'You wouldn't have enough tokens'
    else:
        if 10^16 * uint32(stor0.field_128) / 100 and Mask(96, 0, stor2.field_160) > -1 / 10^16 * uint32(stor0.field_128) / 100:
            revert with 'NH{q', 17
        if 10^16 * uint32(stor0.field_128) and Mask(96, 0, stor2.field_160) > -1 / 10^16 * uint32(stor0.field_128):
            revert with 'NH{q', 17
        if 10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160) > !(10^16 * uint32(stor0.field_128) / 100 * Mask(96, 0, stor2.field_160)):
            revert with 'NH{q', 17
        if (997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18 > !((10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160)) + (10^16 * uint32(stor0.field_128) / 100 * Mask(96, 0, stor2.field_160)) / 10^18):
            revert with 'NH{q', 17
        staticcall address(stor2.field_0).0x70a08231 with:
                gas gas_remaining wei
               args address(stor1.field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ((997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18) + ((10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160)) + (10^16 * uint32(stor0.field_128) / 100 * Mask(96, 0, stor2.field_160)) / 10^18):
            revert with 0, 'You wouldn't have enough tokens'
    if uint16(stor0.field_16) < 60:
        revert with 0, 'Liquidity % must be [60,100]'
    if uint16(stor0.field_16) > 100:
        revert with 0, 'Liquidity % must be [60,100]'
    if 600 > !block.timestamp:
        revert with 'NH{q', 17
    if uint32(stor0.field_64) < block.timestamp + 600:
        revert with 0, 'Start !>10min || end !>2hrs'
    if 2 * 3600 > !block.timestamp:
        revert with 'NH{q', 17
    if uint32(stor0.field_32) < block.timestamp + (2 * 3600):
        revert with 0, 'Start !>10min || end !>2hrs'
    if block.timestamp > -2592001:
        revert with 'NH{q', 17
    if uint32(stor0.field_64) > block.timestamp + (720 * 24 * 3600):
        revert with 0, 'Must start sooner than 1 month'
    if uint32(stor0.field_32) <= uint32(stor0.field_64):
        revert with 0, 'Must end after startTime'
    if uint32(stor0.field_32) < uint32(stor0.field_64):
        revert with 'NH{q', 17
    if uint32(uint32(stor0.field_32) - uint32(stor0.field_64)) < 600:
        revert with 0, 'Must run for at least 10 minutes'
    if uint32(stor0.field_32) < uint32(stor0.field_64):
        revert with 'NH{q', 17
    if uint32(uint32(stor0.field_32) - uint32(stor0.field_64)) > 720 * 24 * 3600:
        revert with 0, 'Cannot run > 1 month'
    if uint32(stor0.field_32) > -2592001:
        revert with 'NH{q', 17
    if uint32(stor0.field_96) < uint32(stor0.field_32) + (720 * 24 * 3600):
        revert with 0, 'Liquidity cannot unlock <1 month'
    if not Mask(96, 0, stor1.field_160):
        revert with 0, 'Rates can't be 0'
    if not Mask(96, 0, stor2.field_160):
        revert with 0, 'Rates can't be 0'
    if uint32(stor0.field_128) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if uint32(stor0.field_224) >= 100 * uint32(stor0.field_128):
        revert with 0, 'Min contribution must be >0 and <hardcap'
    if not uint32(stor0.field_224):
        revert with 0, 'Min contribution must be >0 and <hardcap'
    if uint32(stor0.field_224) >= uint32(stor0.field_192):
        revert with 0, 'Min contribution must be < maxContrib'
    if not uint32(stor0.field_160):
        revert with 0, 'Softcap & hardcap must be >0'
    if not uint32(stor0.field_128):
        revert with 0, 'Softcap & hardcap must be >0'
    if uint32(stor0.field_160) < stor0.field_129 % 2147483648:
        revert with 0, 'Softcap must be > 0.5*hardcap'
    if uint32(stor0.field_160) >= uint32(stor0.field_128):
        revert with 0, 'Softcap must be < hardcap'
}

function sub_0182c083(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if uint32(stor0.field_192) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
        revert with 'NH{q', 17
    if uint32(stor0.field_128) > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
        revert with 'NH{q', 17
    if uint8(stor3.field_216):
        revert with 0, 'Already finalized or canceled'
    if uint8(stor3.field_224):
        revert with 0, 'Already finalized or canceled'
    if uint32(stor0.field_192) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
        revert with 'NH{q', 17
    if uint32(stor0.field_128) > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
        revert with 'NH{q', 17
    if 100 < uint16(stor0.field_0):
        revert with 'NH{q', 17
    if 10^16 * uint32(stor0.field_128) and uint16(stor0.field_16) > -1 / 10^16 * uint32(stor0.field_128):
        revert with 'NH{q', 17
    if 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) and uint16(-uint16(stor0.field_0) + 100) > -1 / 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16):
        revert with 'NH{q', 17
    if 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if 997 * 10^18 > !(1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000):
        revert with 'NH{q', 17
    if Mask(96, 0, stor1.field_160) and (1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000) + 997 * 10^18 > -1 / Mask(96, 0, stor1.field_160):
        revert with 'NH{q', 17
    if 10^14 * uint32(stor0.field_192) <= 10^16 * uint32(stor0.field_128) / 100:
        if 10^14 * uint32(stor0.field_192) and Mask(96, 0, stor2.field_160) > -1 / 10^14 * uint32(stor0.field_192):
            revert with 'NH{q', 17
        if 10^16 * uint32(stor0.field_128) and Mask(96, 0, stor2.field_160) > -1 / 10^16 * uint32(stor0.field_128):
            revert with 'NH{q', 17
        if 10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160) > !(10^14 * uint32(stor0.field_192) * Mask(96, 0, stor2.field_160)):
            revert with 'NH{q', 17
        if (997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18 > !((10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160)) + (10^14 * uint32(stor0.field_192) * Mask(96, 0, stor2.field_160)) / 10^18):
            revert with 'NH{q', 17
        mem[ceil32(ceil32(arg2.length)) + 101] = this.address
        staticcall address(stor2.field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(ceil32(arg2.length)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ((997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18) + ((10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160)) + (10^14 * uint32(stor0.field_192) * Mask(96, 0, stor2.field_160)) / 10^18):
            revert with 0, 'Presale creator has not deposited tokens'
    else:
        if 10^16 * uint32(stor0.field_128) / 100 and Mask(96, 0, stor2.field_160) > -1 / 10^16 * uint32(stor0.field_128) / 100:
            revert with 'NH{q', 17
        if 10^16 * uint32(stor0.field_128) and Mask(96, 0, stor2.field_160) > -1 / 10^16 * uint32(stor0.field_128):
            revert with 'NH{q', 17
        if 10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160) > !(10^16 * uint32(stor0.field_128) / 100 * Mask(96, 0, stor2.field_160)):
            revert with 'NH{q', 17
        if (997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18 > !((10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160)) + (10^16 * uint32(stor0.field_128) / 100 * Mask(96, 0, stor2.field_160)) / 10^18):
            revert with 'NH{q', 17
        mem[ceil32(ceil32(arg2.length)) + 101] = this.address
        staticcall address(stor2.field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(ceil32(arg2.length)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ((997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * 10^16 * uint32(stor0.field_128) * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18) + ((10^16 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160)) + (10^16 * uint32(stor0.field_128) / 100 * Mask(96, 0, stor2.field_160)) / 10^18):
            revert with 0, 'Presale creator has not deposited tokens'
    if uint32(stor0.field_224) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
        revert with 'NH{q', 17
    if amountContributed[msg.sender] > !msg.value:
        revert with 'NH{q', 17
    if amountContributed[msg.sender] + msg.value < 10^14 * uint32(stor0.field_224):
        revert with 0, 'Invalid contribution amount'
    if amountContributed[msg.sender] > !msg.value:
        revert with 'NH{q', 17
    if amountContributed[msg.sender] + msg.value > 10^14 * uint32(stor0.field_192):
        revert with 0, 'Invalid contribution amount'
    if 10^16 * uint32(stor0.field_128) <= totalContributed:
        revert with 0, 'Hardcap reached'
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 129] = address(this.address)
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 149] = address(msg.sender)
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 97] = 40
    require 65 == arg2.length
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == 0x9142b1e260f0c7d02ed5ce969ab6fbeb871a676b
    require arg1 == sha3(this.address, msg.sender)
    if totalContributed > !msg.value:
        revert with 'NH{q', 17
    if totalContributed + msg.value <= 10^16 * uint32(stor0.field_128):
        if not amountContributed[msg.sender]:
            if 1 > -totalContributors + test266151307():
                revert with 'NH{q', 17
            totalContributors = uint32(totalContributors + 1)
        if amountContributed[msg.sender] > !msg.value:
            revert with 'NH{q', 17
        if amountContributed[msg.sender] + msg.value <= 10^14 * uint32(stor0.field_192):
            if msg.value > msg.value:
                revert with 0, 'Unable to calculate amount'
            if amountContributed[msg.sender] > !msg.value:
                revert with 'NH{q', 17
            if amountContributed[msg.sender] + msg.value > 10^14 * uint32(stor0.field_192):
                revert with 0, 'Unable to calculate amount'
            if amountContributed[msg.sender] > !msg.value:
                revert with 'NH{q', 17
            amountContributed[msg.sender] += msg.value
            if totalContributed > !msg.value:
                revert with 'NH{q', 17
            totalContributed = Mask(216, 0, totalContributed + msg.value)
            if msg.value < msg.value:
                revert with 'NH{q', 17
        else:
            if 10^14 * uint32(stor0.field_192) < amountContributed[msg.sender]:
                revert with 'NH{q', 17
            if (10^14 * uint32(stor0.field_192)) - amountContributed[msg.sender] > msg.value:
                revert with 0, 'Unable to calculate amount'
            if amountContributed[msg.sender] > !((10^14 * uint32(stor0.field_192)) - amountContributed[msg.sender]):
                revert with 'NH{q', 17
            if 10^14 * uint32(stor0.field_192) > 10^14 * uint32(stor0.field_192):
                revert with 0, 'Unable to calculate amount'
            if amountContributed[msg.sender] > !((10^14 * uint32(stor0.field_192)) - amountContributed[msg.sender]):
                revert with 'NH{q', 17
            amountContributed[msg.sender] = 10^14 * uint32(stor0.field_192)
            if totalContributed > !((10^14 * uint32(stor0.field_192)) - amountContributed[msg.sender]):
                revert with 'NH{q', 17
            totalContributed = Mask(216, 0, totalContributed + (10^14 * uint32(stor0.field_192)) - amountContributed[msg.sender])
            if (10^14 * uint32(stor0.field_192)) - amountContributed[msg.sender] < msg.value:
                if msg.value < (10^14 * uint32(stor0.field_192)) - amountContributed[msg.sender]:
                    revert with 'NH{q', 17
                call msg.sender with:
                   value msg.value - (10^14 * uint32(stor0.field_192)) + amountContributed[msg.sender] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if 10^16 * uint32(stor0.field_128) < totalContributed:
            revert with 'NH{q', 17
        if not amountContributed[msg.sender]:
            if 1 > -totalContributors + test266151307():
                revert with 'NH{q', 17
            totalContributors = uint32(totalContributors + 1)
        if amountContributed[msg.sender] > !msg.value:
            revert with 'NH{q', 17
        if amountContributed[msg.sender] + msg.value <= 10^14 * uint32(stor0.field_192):
            if (10^16 * uint32(stor0.field_128)) - totalContributed > msg.value:
                revert with 0, 'Unable to calculate amount'
            if amountContributed[msg.sender] > !((10^16 * uint32(stor0.field_128)) - totalContributed):
                revert with 'NH{q', 17
            if amountContributed[msg.sender] + (10^16 * uint32(stor0.field_128)) - totalContributed > 10^14 * uint32(stor0.field_192):
                revert with 0, 'Unable to calculate amount'
            if amountContributed[msg.sender] > !((10^16 * uint32(stor0.field_128)) - totalContributed):
                revert with 'NH{q', 17
            amountContributed[msg.sender] = amountContributed[msg.sender] + (10^16 * uint32(stor0.field_128)) - totalContributed
            if totalContributed > !((10^16 * uint32(stor0.field_128)) - totalContributed):
                revert with 'NH{q', 17
            totalContributed = Mask(216, 0, 10^16 * uint32(stor0.field_128))
            if (10^16 * uint32(stor0.field_128)) - totalContributed < msg.value:
                if msg.value < (10^16 * uint32(stor0.field_128)) - totalContributed:
                    revert with 'NH{q', 17
                call msg.sender with:
                   value msg.value - (10^16 * uint32(stor0.field_128)) + totalContributed wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if 10^14 * uint32(stor0.field_192) < amountContributed[msg.sender]:
                revert with 'NH{q', 17
            if (10^14 * uint32(stor0.field_192)) - amountContributed[msg.sender] > msg.value:
                revert with 0, 'Unable to calculate amount'
            if amountContributed[msg.sender] > !((10^14 * uint32(stor0.field_192)) - amountContributed[msg.sender]):
                revert with 'NH{q', 17
            if 10^14 * uint32(stor0.field_192) > 10^14 * uint32(stor0.field_192):
                revert with 0, 'Unable to calculate amount'
            if amountContributed[msg.sender] > !((10^14 * uint32(stor0.field_192)) - amountContributed[msg.sender]):
                revert with 'NH{q', 17
            amountContributed[msg.sender] = 10^14 * uint32(stor0.field_192)
            if totalContributed > !((10^14 * uint32(stor0.field_192)) - amountContributed[msg.sender]):
                revert with 'NH{q', 17
            totalContributed = Mask(216, 0, totalContributed + (10^14 * uint32(stor0.field_192)) - amountContributed[msg.sender])
            if (10^14 * uint32(stor0.field_192)) - amountContributed[msg.sender] < msg.value:
                if msg.value < (10^14 * uint32(stor0.field_192)) - amountContributed[msg.sender]:
                    revert with 'NH{q', 17
                call msg.sender with:
                   value msg.value - (10^14 * uint32(stor0.field_192)) + amountContributed[msg.sender] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp > -172801:
        revert with 'NH{q', 17
    sub_776b2609 = uint32(block.timestamp + (48 * 24 * 3600))
    emit 0x338bfbda 
}

function finalize() {
    if address(stor1.field_0) != msg.sender:
        revert with 0, 'creator only'
    if uint8(stor3.field_232):
        revert with 0, 'Re-entrancy guard'
    uint8(stor3.field_232) = 1
    if block.timestamp < uint32(stor0.field_32):
        if uint32(stor0.field_224) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
            revert with 'NH{q', 17
        if uint32(stor0.field_128) > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
            revert with 'NH{q', 17
        if 10^16 * uint32(stor0.field_128) < totalContributed:
            revert with 'NH{q', 17
        if (10^16 * uint32(stor0.field_128)) - totalContributed > 10^14 * uint32(stor0.field_224):
            revert with 0, 'Not finished yet'
    else:
        if uint32(stor0.field_160) > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
            revert with 'NH{q', 17
        if totalContributed < 10^16 * uint32(stor0.field_160):
            if uint32(stor0.field_224) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
                revert with 'NH{q', 17
            if uint32(stor0.field_128) > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
                revert with 'NH{q', 17
            if 10^16 * uint32(stor0.field_128) < totalContributed:
                revert with 'NH{q', 17
            if (10^16 * uint32(stor0.field_128)) - totalContributed > 10^14 * uint32(stor0.field_224):
                revert with 0, 'Not finished yet'
    if uint8(stor3.field_216):
        revert with 0, 'Already finalized or canceled'
    if uint8(stor3.field_224):
        revert with 0, 'Already finalized or canceled'
    uint8(stor3.field_216) = 1
    staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, address(stor2.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        if 100 < uint16(stor0.field_0):
            revert with 'NH{q', 17
        if totalContributed and uint16(stor0.field_16) > -1 / totalContributed:
            revert with 'NH{q', 17
        if totalContributed * uint16(stor0.field_16) and uint16(-uint16(stor0.field_0) + 100) > -1 / totalContributed * uint16(stor0.field_16):
            revert with 'NH{q', 17
        if totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 'NH{q', 17
        if 997 * 10^18 > !(1000 * totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000):
            revert with 'NH{q', 17
        if Mask(96, 0, stor1.field_160) and (1000 * totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000) + 997 * 10^18 > -1 / Mask(96, 0, stor1.field_160):
            revert with 'NH{q', 17
        call address(stor2.field_0).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x10ed43c718714eb63d5aa57b78b54704e256024e, (997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 wei
             gas gas_remaining wei
            args address(stor2.field_0), (997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18, (997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18, totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000, this.address, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if totalContributed and uint16(stor0.field_0) > -1 / totalContributed:
            revert with 'NH{q', 17
        call 0x5bbbe52bf8fcdb79fc349173b40f9c484c5ae9eb with:
           value totalContributed * uint16(stor0.field_0) / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint32(stor0.field_192) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
            revert with 'NH{q', 17
        if uint32(stor0.field_128) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
            revert with 'NH{q', 17
        if 10^14 * uint32(stor0.field_192) <= 10^14 * uint32(stor0.field_128):
            if 10^14 * uint32(stor0.field_192) and Mask(96, 0, stor2.field_160) > -1 / 10^14 * uint32(stor0.field_192):
                revert with 'NH{q', 17
            call address(stor2.field_0).0xa9059cbb with:
                 gas gas_remaining wei
                args 0x5bbbe52bf8fcdb79fc349173b40f9c484c5ae9eb, 10^14 * uint32(stor0.field_192) * Mask(96, 0, stor2.field_160) / 10^18
        else:
            if uint32(stor0.field_128) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
                revert with 'NH{q', 17
            if 10^14 * uint32(stor0.field_128) and Mask(96, 0, stor2.field_160) > -1 / 10^14 * uint32(stor0.field_128):
                revert with 'NH{q', 17
            call address(stor2.field_0).0xa9059cbb with:
                 gas gas_remaining wei
                args 0x5bbbe52bf8fcdb79fc349173b40f9c484c5ae9eb, 10^14 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160) / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if totalContributed < totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000:
            revert with 'NH{q', 17
        if totalContributed - (totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000) < totalContributed * uint16(stor0.field_0) / 100:
            revert with 'NH{q', 17
        staticcall 'console.log'.0x9710a9d0 with:
                gas gas_remaining wei
               args 0, 64, totalContributed - (totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000) - (totalContributed * uint16(stor0.field_0) / 100), 7, 'CRE BNB', 0
        if not totalContributed - (totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000) - (totalContributed * uint16(stor0.field_0) / 100):
            staticcall address(stor2.field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call address(stor1.field_0) with:
               value totalContributed - (totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000) - (totalContributed * uint16(stor0.field_0) / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall address(stor2.field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
        require return_data.size >= 32
        if totalContributed and Mask(96, 0, stor2.field_160) > -1 / totalContributed:
            revert with 'NH{q', 17
        staticcall 'console.log'.0x969cdd03 with:
                gas gas_remaining wei
               args 0, 96, ext_call.return_data[0], totalContributed * Mask(96, 0, stor2.field_160) / 10^18, 8, 'SO FUNNY', 0
    else:
        call 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, address(stor2.field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 100 < uint16(stor0.field_0):
            revert with 'NH{q', 17
        if totalContributed and uint16(stor0.field_16) > -1 / totalContributed:
            revert with 'NH{q', 17
        if totalContributed * uint16(stor0.field_16) and uint16(-uint16(stor0.field_0) + 100) > -1 / totalContributed * uint16(stor0.field_16):
            revert with 'NH{q', 17
        if totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 'NH{q', 17
        if 997 * 10^18 > !(1000 * totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000):
            revert with 'NH{q', 17
        if Mask(96, 0, stor1.field_160) and (1000 * totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000) + 997 * 10^18 > -1 / Mask(96, 0, stor1.field_160):
            revert with 'NH{q', 17
        call address(stor2.field_0).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x10ed43c718714eb63d5aa57b78b54704e256024e, (997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 wei
             gas gas_remaining wei
            args address(stor2.field_0), (997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18, (997 * 10^18 * Mask(96, 0, stor1.field_160)) + (1000 * totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000 * Mask(96, 0, stor1.field_160)) / 997 * 10^18, totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000, this.address, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if totalContributed and uint16(stor0.field_0) > -1 / totalContributed:
            revert with 'NH{q', 17
        call 0x5bbbe52bf8fcdb79fc349173b40f9c484c5ae9eb with:
           value totalContributed * uint16(stor0.field_0) / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint32(stor0.field_192) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
            revert with 'NH{q', 17
        if uint32(stor0.field_128) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
            revert with 'NH{q', 17
        if 10^14 * uint32(stor0.field_192) <= 10^14 * uint32(stor0.field_128):
            if 10^14 * uint32(stor0.field_192) and Mask(96, 0, stor2.field_160) > -1 / 10^14 * uint32(stor0.field_192):
                revert with 'NH{q', 17
            call address(stor2.field_0).0xa9059cbb with:
                 gas gas_remaining wei
                args 0x5bbbe52bf8fcdb79fc349173b40f9c484c5ae9eb, 10^14 * uint32(stor0.field_192) * Mask(96, 0, stor2.field_160) / 10^18
        else:
            if uint32(stor0.field_128) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
                revert with 'NH{q', 17
            if 10^14 * uint32(stor0.field_128) and Mask(96, 0, stor2.field_160) > -1 / 10^14 * uint32(stor0.field_128):
                revert with 'NH{q', 17
            call address(stor2.field_0).0xa9059cbb with:
                 gas gas_remaining wei
                args 0x5bbbe52bf8fcdb79fc349173b40f9c484c5ae9eb, 10^14 * uint32(stor0.field_128) * Mask(96, 0, stor2.field_160) / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if totalContributed < totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000:
            revert with 'NH{q', 17
        if totalContributed - (totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000) < totalContributed * uint16(stor0.field_0) / 100:
            revert with 'NH{q', 17
        staticcall 'console.log'.0x9710a9d0 with:
                gas gas_remaining wei
               args 0, 64, totalContributed - (totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000) - (totalContributed * uint16(stor0.field_0) / 100), 7, 'CRE BNB', 0
        if not totalContributed - (totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000) - (totalContributed * uint16(stor0.field_0) / 100):
            staticcall address(stor2.field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call address(stor1.field_0) with:
               value totalContributed - (totalContributed * uint16(stor0.field_16) * uint16(-uint16(stor0.field_0) + 100) / 10000) - (totalContributed * uint16(stor0.field_0) / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall address(stor2.field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
        require return_data.size >= 32
        if totalContributed and Mask(96, 0, stor2.field_160) > -1 / totalContributed:
            revert with 'NH{q', 17
        mem[(8 * ceil32(return_data.size)) + 424] = 96
        mem[(8 * ceil32(return_data.size)) + 520] = 8
        mem[(8 * ceil32(return_data.size)) + 552] = 'SO FUNNY'
        mem[(8 * ceil32(return_data.size)) + 560] = 0
        mem[(8 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 488] = totalContributed * Mask(96, 0, stor2.field_160) / 10^18
        mem[(8 * ceil32(return_data.size)) + 424 len 28] = 0
        staticcall 'console.log'.0x969cdd03 with:
                gas gas_remaining wei
               args mem[(8 * ceil32(return_data.size)) + 424 len ceil32(return_data.size) + 160]
    if totalContributed and Mask(96, 0, stor2.field_160) > -1 / totalContributed:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < totalContributed * Mask(96, 0, stor2.field_160) / 10^18:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - (totalContributed * Mask(96, 0, stor2.field_160) / 10^18):
        call address(stor2.field_0).0xa9059cbb with:
             gas gas_remaining wei
            args 57005, ext_call.return_data[0] - (totalContributed * Mask(96, 0, stor2.field_160) / 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uint32(stor0.field_32) = uint32(block.timestamp)
    emit 0x338bfbda 
    uint8(stor3.field_232) = 0
}



}
