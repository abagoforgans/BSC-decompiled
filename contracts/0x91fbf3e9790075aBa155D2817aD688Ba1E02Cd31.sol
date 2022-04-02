contract main {




// =====================  Runtime code  =====================


address routerAddress;
address owner;
uint256 oneUnit;
uint256 minBuyTokenPerUnit;
address tokenAddress;
uint256 inAmount;
uint256 stor6; offset 32
uint256 sub_89a17cf5;
mapping of uint8 stor7;

function sub_89a17cf5(?) {
    return sub_89a17cf5
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function minBuyTokenPerUnit() {
    return minBuyTokenPerUnit
}

function oneUnit() {
    return oneUnit
}

function inAmount() {
    return inAmount
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function sub_66ab559e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    stor7[address(arg1)] = 1
}

function setInfo(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    tokenAddress = arg1
    inAmount = arg2
    sub_89a17cf5 = arg3
}

function withdrawEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function buy(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(routerAddress)
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == ext_call.return_data[12 len 20]:
        require ext_code.size(routerAddress)
        staticcall routerAddress.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[160] = tokenAddress
        mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[196] = sub_89a17cf5
        mem[260] = owner
        mem[292] = block.timestamp
        mem[228] = 128
        mem[324] = 2
        mem[356 len 0] = None
        require ext_code.size(routerAddress)
        call routerAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value inAmount wei
             gas gas_remaining wei
            args sub_89a17cf5, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], stor6 <= 4294967296
        require mem[192 len 4], stor6 + 32 <= return_data.size
        require mem[mem[192 len 4], stor6 + 192] <= 4294967296 and mem[192 len 4], stor6 + (32 * mem[mem[192 len 4], stor6 + 192]) + 32 <= return_data.size
    else:
        if not stor7[address(arg1)]:
            revert with 0, 'Pivot not allowed'
        require ext_code.size(routerAddress)
        staticcall routerAddress.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[192] = tokenAddress
        mem[224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[228] = sub_89a17cf5
        mem[292] = owner
        mem[324] = block.timestamp
        mem[260] = 128
        mem[356] = 3
        mem[388 len 0] = None
        require ext_code.size(routerAddress)
        call routerAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value inAmount wei
             gas gas_remaining wei
            args sub_89a17cf5, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        require mem[224 len 4], stor6 <= 4294967296
        require mem[224 len 4], stor6 + 32 <= return_data.size
        require mem[mem[224 len 4], stor6 + 224] <= 4294967296 and mem[224 len 4], stor6 + (32 * mem[mem[224 len 4], stor6 + 224]) + 32 <= return_data.size
}



}
