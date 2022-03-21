contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_1038593b(?) {
    if 0xeb8c86ef85710a25bfe65d7030de78357eee3f24 != msg.sender:
        revert with 0, 'o'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawtoken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0xeb8c86ef85710a25bfe65d7030de78357eee3f24 != msg.sender:
        revert with 0, 'o'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0xeb8c86ef85710a25bfe65d7030de78357eee3f24, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_4a36e47b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if 0xeb8c86ef85710a25bfe65d7030de78357eee3f24 != msg.sender:
        revert with 0, 'o'
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    s = Mask(112, 0, ext_call.return_data[0] * ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[32]) + 1 / 2
    t = Mask(112, 0, ext_call.return_data[0] * ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[32])
    while s < t:
        require s
        s = (Mask(112, 0, ext_call.return_data[0] * ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[32]) / s) + s / 2
        t = s
        continue 
    if Mask(112, 0, ext_call.return_data[0] * ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[0] * ext_call.return_data[32]):
        require 2 * Mask(111, 0, ext_call.return_data[32])
        if t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'x'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'y'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'y'
        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32]))
        if 997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32])) <= 0:
            revert with 0, 'x'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'y'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'y'
        require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32])))
        if 997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32])) <= 0:
            revert with 0, 'z1'
        if 997 * 997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32])) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32]))) <= 0:
            revert with 0, 'z2'
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32]))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(arg1))
        call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, 997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32])), address(arg2), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg2))
        call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 997 * 997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * t - Mask(112, 0, ext_call.return_data[32] * ext_call.return_data[0]) / 2 * Mask(111, 0, ext_call.return_data[32]))), 0, 0xeb8c86ef85710a25bfe65d7030de78357eee3f24, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 'X'
}



}
