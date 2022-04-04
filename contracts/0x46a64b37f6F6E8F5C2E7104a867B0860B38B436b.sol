contract main {




// =====================  Runtime code  =====================


address stor0;
address managerAddress;
address WETHAddress;
array of struct path;
address routerAddress;

function manager() {
    return managerAddress
}

function WETH() {
    return WETHAddress
}

function path(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < path.length
    return path[arg1].field_0
}

function router() {
    return routerAddress
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == managerAddress
    call managerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve_t(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == managerAddress
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferFrom_t(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == managerAddress
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw_t(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
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
        args managerAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function b(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    path.length = 0
    idx = 0
    while path.length > idx:
        path[idx].field_0 = 0
        idx = idx + 1
        continue 
    path.length++
    path[path.length].field_0 = WETHAddress
    path.length++
    path[path.length].field_0 = arg1
    if not path.length:
        require ext_code.size(stor0)
        call stor0.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value arg2 wei
             gas gas_remaining wei
            args 0, uint32(arg3), 128, address(this.address), block.timestamp + 10, path.length
    else:
        mem[260] = address(path.field_0)
        idx = 260
        s = 0
        while (32 * path.length) + 260 > idx + 32:
            mem[idx + 32] = path[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(stor0)
        call stor0.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value arg2 wei
             gas gas_remaining wei
            args 0, uint32(arg3), 128, address(this.address), block.timestamp + 10, path.length, mem[260 len 32 * path.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function s(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    path.length = 0
    idx = 0
    while path.length > idx:
        path[idx].field_0 = 0
        idx = idx + 1
        continue 
    path.length++
    path[path.length].field_0 = arg1
    path.length++
    path[path.length].field_0 = WETHAddress
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not path.length:
        require ext_code.size(stor0)
        call stor0.swapTokensForExactETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, uint32(arg2), ext_call.return_data[0], 160, address(this.address), block.timestamp + 10, path.length
    else:
        mem[292] = address(path.field_0)
        idx = 292
        s = 0
        while (32 * path.length) + 292 > idx + 32:
            mem[idx + 32] = path[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(stor0)
        call stor0.swapTokensForExactETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, uint32(arg2), ext_call.return_data[0], 160, address(this.address), block.timestamp + 10, path.length, mem[292 len 32 * path.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function z(address arg1, uint256 arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg3)
    staticcall arg3.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'ERC20: Approval needed'
    if arg2:
        path.length = 0
        idx = 0
        while path.length > idx:
            path[idx].field_0 = 0
            idx = idx + 1
            continue 
        path.length++
        path[path.length].field_0 = arg1
        path.length++
        path[path.length].field_0 = arg3
        if not path.length:
            require ext_code.size(stor0)
            call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg2), arg4, 160, address(this.address), block.timestamp + 10, path.length
        else:
            mem[292] = address(path.field_0)
            idx = 292
            s = 0
            while (32 * path.length) + 292 > idx + 32:
                mem[idx + 32] = path[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(stor0)
            call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg2), arg4, 160, address(this.address), block.timestamp + 10, path.length, mem[292 len 32 * path.length]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        path.length = 0
        idx = 0
        while path.length > idx:
            path[idx].field_0 = 0
            idx = idx + 1
            continue 
        path.length++
        path[path.length].field_0 = arg1
        path.length++
        path[path.length].field_0 = arg3
        if not path.length:
            require ext_code.size(stor0)
            call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[28 len 4], arg4, 160, address(this.address), block.timestamp + 10, path.length
        else:
            mem[292] = address(path.field_0)
            idx = 292
            s = 0
            while (32 * path.length) + 292 > idx + 32:
                mem[idx + 32] = path[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(stor0)
            call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[28 len 4], arg4, 160, address(this.address), block.timestamp + 10, path.length, mem[292 len 32 * path.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
