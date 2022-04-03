contract main {




// =====================  Runtime code  =====================


#
#  - flashSwap(address arg1, uint256 arg2, address arg3, bytes arg4)
#
address stor0;
address stor1;

function _fallback() payable {
  stop
}

function sub_3461ccf1(?) {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0614a515(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x2e6f6e6c79207065726d697373696f6e656420556e6973776170563220706169722063616e2063616c,
                    mem[205 len 23]
    if arg1 != this.address:
        revert with 0, 'only this contract may initiate'
    require arg4.length >= 256
    require cd[(arg4 + 228)] <= 4294967296
    require cd[(arg4 + 228)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 228)] + 36)] <= 4294967296 and cd[(arg4 + 228)] + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 68 <= arg4.length + 36
    mem[128 len cd[(arg4 + cd[(arg4 + 228)] + 36)]] = call.data[arg4 + cd[(arg4 + 228)] + 68 len cd[(arg4 + cd[(arg4 + 228)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 128] = 0
    require cd[(arg4 + 260)] <= 4294967296
    require cd[(arg4 + 260)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 260)] + 36)] <= 4294967296 and cd[(arg4 + 260)] + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 68 <= arg4.length + 36
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 260)] + 36)]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160 len cd[(arg4 + cd[(arg4 + 260)] + 36)]] = call.data[arg4 + cd[(arg4 + 260)] + 68 len cd[(arg4 + cd[(arg4 + 260)] + 36)]]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160] = 0
    require uint8(cd[(arg4 + 36)]) <= 2
    if not uint8(cd[(arg4 + 36)]):
        if not cd[(arg4 + 164)]:
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = 2
            require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = address(cd[(arg4 + 68)])
            require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
            if cd[(arg4 + 196)]:
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0
                if not address(cd[(arg4 + 68)]):
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = this.address
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356] = block.timestamp + 15
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 128
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 388] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 420 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                    require ext_code.size(0xcde540d7eafe93ac5fe6233bee57e1270d3e330f)
                    call 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value cd[(arg4 + 100)] wei
                         gas gas_remaining wei
                        args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256
                    require return_data.size >= 32
                    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 <= 4294967296
                    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 256] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 256]) + 32 <= return_data.size
                else:
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f, cd[(arg4 + 100)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = cd[(arg4 + 100)]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356] = this.address
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 388] = block.timestamp + 15
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = 160
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 420] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 452 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                    require ext_code.size(0xcde540d7eafe93ac5fe6233bee57e1270d3e330f)
                    call 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256
                    require return_data.size >= 32
                    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= 4294967296
                    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 32 <= return_data.size
                    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 256] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 256]) + 32 <= return_data.size
            else:
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = address(cd[(arg4 + 68)])
                if not address(cd[(arg4 + 68)]):
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = this.address
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356] = block.timestamp + 15
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 128
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 388] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 420 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                    require ext_code.size(0xcde540d7eafe93ac5fe6233bee57e1270d3e330f)
                    call 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value cd[(arg4 + 100)] wei
                         gas gas_remaining wei
                        args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256
                    require return_data.size >= 32
                    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 <= 4294967296
                    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 256] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 256]) + 32 <= return_data.size
                else:
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f, cd[(arg4 + 100)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = cd[(arg4 + 100)]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 0
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356] = this.address
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 388] = block.timestamp + 15
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = 160
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 420] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 452 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                    require ext_code.size(0xcde540d7eafe93ac5fe6233bee57e1270d3e330f)
                    call 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256
                    require return_data.size >= 32
                    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= 4294967296
                    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 32 <= return_data.size
                    require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 256] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 256]) + 32 <= return_data.size
        else:
            require ext_code.size(stor1)
            call stor1.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args cd[(arg4 + 100)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 0 < 0, 2
            if cd[(arg4 + 164)]:
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0
                require 1 < 0, 2
                if cd[(arg4 + 196)]:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0
                else:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = address(cd[(arg4 + 68)])
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = this.address
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356] = block.timestamp + 15
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 128
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 388] = 0, 2
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 420 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 2)]
                require ext_code.size(0xcde540d7eafe93ac5fe6233bee57e1270d3e330f)
                call 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value cd[(arg4 + 100)] wei
                     gas gas_remaining wei
                    args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len (32 * 0, 2) + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256
                require return_data.size >= 32
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 <= 4294967296
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 32 <= return_data.size
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 256] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 256]) + 32 <= return_data.size
            else:
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = address(cd[(arg4 + 68)])
                require 1 < 0, 2
                if cd[(arg4 + 196)]:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0
                    if not address(cd[(arg4 + 68)]):
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = this.address
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356] = block.timestamp + 15
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 128
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 388] = 0, 2
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 420 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 2)]
                        require ext_code.size(0xcde540d7eafe93ac5fe6233bee57e1270d3e330f)
                        call 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                           value cd[(arg4 + 100)] wei
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len (32 * 0, 2) + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 <= 4294967296
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 32 <= return_data.size
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 256] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 256]) + 32 <= return_data.size
                    else:
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f, cd[(arg4 + 100)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = cd[(arg4 + 100)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 0
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356] = this.address
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 388] = block.timestamp + 15
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = 160
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 420] = 0, 2
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 452 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 2)]
                        require ext_code.size(0xcde540d7eafe93ac5fe6233bee57e1270d3e330f)
                        call 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len (32 * 0, 2) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= 4294967296
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 32 <= return_data.size
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 256] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 256]) + 32 <= return_data.size
                else:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = address(cd[(arg4 + 68)])
                    if not address(cd[(arg4 + 68)]):
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = this.address
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356] = block.timestamp + 15
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 128
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 388] = 0, 2
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 420 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 2)]
                        require ext_code.size(0xcde540d7eafe93ac5fe6233bee57e1270d3e330f)
                        call 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                           value cd[(arg4 + 100)] wei
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len (32 * 0, 2) + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 <= 4294967296
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 32 <= return_data.size
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 256] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 256]) + 32 <= return_data.size
                    else:
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f, cd[(arg4 + 100)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = cd[(arg4 + 100)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 0
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356] = this.address
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 388] = block.timestamp + 15
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = 160
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 420] = 0, 2
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 452 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 2)]
                        require ext_code.size(0xcde540d7eafe93ac5fe6233bee57e1270d3e330f)
                        call 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len (32 * 0, 2) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= 4294967296
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 32 <= return_data.size
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 256] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 256]) + 32 <= return_data.size
        if cd[(arg4 + 196)]:
            require ext_code.size(stor1)
            call stor1.deposit() with:
               value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1
    else:
        require uint8(cd[(arg4 + 36)]) <= 2
        if uint8(cd[(arg4 + 36)]) == 1:
            if cd[(arg4 + 164)]:
                require ext_code.size(stor1)
                call stor1.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 100)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(cd[(arg4 + 68)]))
            staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 132)]))
            staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 997 * ext_call.return_data[0]
            require 0 < 0, 2
            if cd[(arg4 + 164)]:
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = 0
                require 1 < 0, 2
                if cd[(arg4 + 196)]:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0
                else:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = address(cd[(arg4 + 132)])
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = this.address
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356] = block.timestamp + 15
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 128
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 388] = 0, 2
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 420 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 2)]
                require ext_code.size(0xcde540d7eafe93ac5fe6233bee57e1270d3e330f)
                call 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value cd[(arg4 + 100)] wei
                     gas gas_remaining wei
                    args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len (32 * 0, 2) + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256
                require return_data.size >= 32
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 <= 4294967296
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 32 <= return_data.size
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 256] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 256]) + 32 <= return_data.size
            else:
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = address(cd[(arg4 + 68)])
                require 1 < 0, 2
                if cd[(arg4 + 196)]:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0
                    if not address(cd[(arg4 + 68)]):
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = this.address
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356] = block.timestamp + 15
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 128
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 388] = 0, 2
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 420 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 2)]
                        require ext_code.size(0xcde540d7eafe93ac5fe6233bee57e1270d3e330f)
                        call 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                           value cd[(arg4 + 100)] wei
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len (32 * 0, 2) + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 <= 4294967296
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 32 <= return_data.size
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 256] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 256]) + 32 <= return_data.size
                    else:
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f, cd[(arg4 + 100)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = cd[(arg4 + 100)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 0
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356] = this.address
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 388] = block.timestamp + 15
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = 160
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 420] = 0, 2
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 452 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 2)]
                        require ext_code.size(0xcde540d7eafe93ac5fe6233bee57e1270d3e330f)
                        call 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len (32 * 0, 2) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= 4294967296
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 32 <= return_data.size
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 256] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 256]) + 32 <= return_data.size
                else:
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = address(cd[(arg4 + 132)])
                    if not address(cd[(arg4 + 68)]):
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 0
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = this.address
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356] = block.timestamp + 15
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 128
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 388] = 0, 2
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 420 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 2)]
                        require ext_code.size(0xcde540d7eafe93ac5fe6233bee57e1270d3e330f)
                        call 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                           value cd[(arg4 + 100)] wei
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len (32 * 0, 2) + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 <= 4294967296
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 32 <= return_data.size
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 256] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], 0 + 256]) + 32 <= return_data.size
                    else:
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f, cd[(arg4 + 100)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = cd[(arg4 + 100)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 0
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356] = this.address
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 388] = block.timestamp + 15
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = 160
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 420] = 0, 2
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 452 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 2)]
                        require ext_code.size(0xcde540d7eafe93ac5fe6233bee57e1270d3e330f)
                        call 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len (32 * 0, 2) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= 4294967296
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 32 <= return_data.size
                        require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 256] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 256]) + 32 <= return_data.size
            if cd[(arg4 + 196)]:
                require ext_code.size(stor1)
                call stor1.deposit() with:
                   value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
        else:
            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 64
            _11 = mem[160]
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 164] = mem[140 len 20]
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[140 len 20], _11
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 0] = None
            require ext_code.size(mem[140 len 20])
            if address(ext_call.return_data[0]) == address(cd[(arg4 + 68)]):
                if address(cd[(arg4 + 68)]) == ext_call.return_data[12 len 20]:
                    call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 100)], cd[(arg4 + 100)], this.address, 128, 0
                else:
                    call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 100)], 0, this.address, 128, 0
            else:
                if address(cd[(arg4 + 68)]) == ext_call.return_data[12 len 20]:
                    call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, cd[(arg4 + 100)], this.address, 128, 0
                else:
                    call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0, this.address, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 132)]))
            staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 997 * ext_call.return_data[0]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 256] = address(cd[(arg4 + 132)])
            if not address(cd[(arg4 + 68)]):
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = 0
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356] = this.address
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 388] = block.timestamp + 15
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = 128
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 420] = 2
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 452 len 0] = None
                require ext_code.size(0xcde540d7eafe93ac5fe6233bee57e1270d3e330f)
                call 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value cd[(arg4 + 100)] wei
                     gas gas_remaining wei
                    args 0, 128, 0, address(this.address), block.timestamp + 15, 2, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 452 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 288
                require return_data.size >= 32
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288 len 4], 0 <= 4294967296
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288 len 4], 0 + 32 <= return_data.size
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288 len 4], 0 + 288] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288 len 4], 0 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288 len 4], 0 + 288]) + 32 <= return_data.size
            else:
                require ext_code.size(address(cd[(arg4 + 68)]))
                call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f, cd[(arg4 + 100)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = cd[(arg4 + 100)]
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324] = 0
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 388] = this.address
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 420] = block.timestamp + 15
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356] = 160
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 452] = 2
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 484 len 0] = None
                require ext_code.size(0xcde540d7eafe93ac5fe6233bee57e1270d3e330f)
                call 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 100)], 0, 0, 160, address(this.address), block.timestamp + 15, 2, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 484 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 288
                require return_data.size >= 32
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= 4294967296
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 32 <= return_data.size
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 288] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 288 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 288]) + 32 <= return_data.size
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, (1000 * ext_call.return_data[0] * _11 / 997 * ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
