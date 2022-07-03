contract main {




// =====================  Runtime code  =====================


address routerAddress;
address owner;
address administratorAddress;
uint256 sub_fceb0f3b;
uint256 orders;
uint256 sub_5e66ff28;
uint256 sub_d3de13d6;
address tokenToBuyAddress;
address sub_105a5fe0Address;
mapping of uint8 stor9;

function sub_105a5fe0(?) {
    return sub_105a5fe0Address
}

function getAdministrator() {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    return administratorAddress
}

function tokenToBuy() {
    return tokenToBuyAddress
}

function orders() {
    return orders
}

function sub_5e66ff28(?) {
    return sub_5e66ff28
}

function owner() {
    return owner
}

function authenticatedSeller(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function getRouter() {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    return routerAddress
}

function sub_d3de13d6(?) {
    return sub_d3de13d6
}

function administrator() {
    return administratorAddress
}

function router() {
    return routerAddress
}

function sub_fceb0f3b(?) {
    return sub_fceb0f3b
}

function _fallback() payable {
    revert
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    routerAddress = arg1
    return 1
}

function sub_dc7a70ca(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'not enough tokens in contract'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args administratorAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_6e8e4a8d(?) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Not owner'
    sub_5e66ff28 = arg1
    tokenToBuyAddress = arg2
    sub_d3de13d6 = arg3
    orders = arg4
    sub_105a5fe0Address = arg5
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe736e6970653a206e6f7420656e6f7567682057424e4220696e2074686520636f6e74726163,
                    mem[202 len 26]
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == sub_105a5fe0Address:
        mem[96] = 2
        mem[64] = 192
        mem[128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[160] = tokenToBuyAddress
        idx = 0
        while idx < orders:
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_d3de13d6
            mem[mem[64] + 36] = sub_5e66ff28
            mem[mem[64] + 100] = administratorAddress
            mem[mem[64] + 132] = block.timestamp + 120
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[s + mem[64] + 196] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args sub_d3de13d6, sub_5e66ff28, 160, administratorAddress, block.timestamp + 120, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _72 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _74 = mem[_72]
            require mem[_72] <= 4294967296
            require mem[_72] + 32 <= return_data.size
            require mem[_72 + mem[_72]] <= 4294967296 and mem[_72] + (32 * mem[_72 + mem[_72]]) + 32 <= return_data.size
            mem[_72 + ceil32(return_data.size)] = mem[_72 + mem[_72]]
            _80 = mem[_72 + _74]
            s = 0
            while s < 32 * _80:
                mem[s + _72 + ceil32(return_data.size) + 32] = mem[s + _72 + _74 + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _80) + _72 + ceil32(return_data.size) + 32
            idx = idx + 1
            continue 
    else:
        mem[96] = 3
        mem[64] = 224
        mem[128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[160] = sub_105a5fe0Address
        mem[192] = tokenToBuyAddress
        idx = 0
        while idx < orders:
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_d3de13d6
            mem[mem[64] + 36] = sub_5e66ff28
            mem[mem[64] + 100] = administratorAddress
            mem[mem[64] + 132] = block.timestamp + 120
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[s + mem[64] + 196] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args sub_d3de13d6, sub_5e66ff28, 160, administratorAddress, block.timestamp + 120, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _73 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _76 = mem[_73]
            require mem[_73] <= 4294967296
            require mem[_73] + 32 <= return_data.size
            require mem[_73 + mem[_73]] <= 4294967296 and mem[_73] + (32 * mem[_73 + mem[_73]]) + 32 <= return_data.size
            mem[_73 + ceil32(return_data.size)] = mem[_73 + mem[_73]]
            _81 = mem[_73 + _76]
            s = 0
            while s < 32 * _81:
                mem[s + _73 + ceil32(return_data.size) + 32] = mem[s + _73 + _76 + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _81) + _73 + ceil32(return_data.size) + 32
            idx = idx + 1
            continue 
    return 1
}

function sub_7fae60d4(?) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Not owner'
    sub_5e66ff28 = arg1
    tokenToBuyAddress = arg2
    sub_d3de13d6 = arg3
    orders = arg4
    sub_105a5fe0Address = arg5
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe736e6970653a206e6f7420656e6f7567682057424e4220696e2074686520636f6e74726163,
                    mem[202 len 26]
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == sub_105a5fe0Address:
        mem[96] = 2
        mem[64] = 192
        mem[128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[160] = tokenToBuyAddress
        idx = 0
        while idx < orders:
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_5e66ff28
            mem[mem[64] + 36] = sub_d3de13d6
            mem[mem[64] + 100] = administratorAddress
            mem[mem[64] + 132] = block.timestamp + 120
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[s + mem[64] + 196] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args sub_5e66ff28, sub_d3de13d6, 160, administratorAddress, block.timestamp + 120, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _72 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _74 = mem[_72]
            require mem[_72] <= 4294967296
            require mem[_72] + 32 <= return_data.size
            require mem[_72 + mem[_72]] <= 4294967296 and mem[_72] + (32 * mem[_72 + mem[_72]]) + 32 <= return_data.size
            mem[_72 + ceil32(return_data.size)] = mem[_72 + mem[_72]]
            _80 = mem[_72 + _74]
            s = 0
            while s < 32 * _80:
                mem[s + _72 + ceil32(return_data.size) + 32] = mem[s + _72 + _74 + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _80) + _72 + ceil32(return_data.size) + 32
            idx = idx + 1
            continue 
    else:
        mem[96] = 3
        mem[64] = 224
        mem[128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[160] = sub_105a5fe0Address
        mem[192] = tokenToBuyAddress
        idx = 0
        while idx < orders:
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_5e66ff28
            mem[mem[64] + 36] = sub_d3de13d6
            mem[mem[64] + 100] = administratorAddress
            mem[mem[64] + 132] = block.timestamp + 120
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[s + mem[64] + 196] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args sub_5e66ff28, sub_d3de13d6, 160, administratorAddress, block.timestamp + 120, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _73 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _76 = mem[_73]
            require mem[_73] <= 4294967296
            require mem[_73] + 32 <= return_data.size
            require mem[_73 + mem[_73]] <= 4294967296 and mem[_73] + (32 * mem[_73 + mem[_73]]) + 32 <= return_data.size
            mem[_73 + ceil32(return_data.size)] = mem[_73 + mem[_73]]
            _81 = mem[_73 + _76]
            s = 0
            while s < 32 * _81:
                mem[s + _73 + ceil32(return_data.size) + 32] = mem[s + _73 + _76 + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _81) + _73 + ceil32(return_data.size) + 32
            idx = idx + 1
            continue 
    return 1
}



}
