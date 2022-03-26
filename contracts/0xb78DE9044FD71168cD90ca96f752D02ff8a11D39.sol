contract main {




// =====================  Runtime code  =====================


#
#  - transferToken(address arg1, address arg2, uint256 arg3)
#
function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > eth.balance(this.address):
        return 0
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    return bool(ext_call.success)
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > eth.balance(this.address):
        return 0
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       value arg1 wei
         gas gas_remaining wei
    return bool(ext_call.success)
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        return 0
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    mem[196 len 64] = approve(address rg1, uint256 rg2), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[288 len 4] = uint32(arg3)
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            return bool(ext_call.success)
        return bool(approve(address rg1, uint256 rg2), address(arg2) << 64)
    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        return bool(ext_call.success)
    if not return_data.size:
        return not bool(return_data.size)
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 197] = bool(mem[228])
    return memory
      from ceil32(return_data.size) + 197
       len 32
}

function transferTokenFrom(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    mem[228 len 96] = unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(arg3), Mask(224, 32, arg4) >> 32
    mem[352 len 4] = uint32(arg4)
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            return bool(ext_call.success)
        return bool(unknown_0x23b872dd(?????), address(arg2) << 64)
    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        return bool(ext_call.success)
    if not return_data.size:
        return not bool(return_data.size)
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 229] = bool(mem[260])
    return memory
      from ceil32(return_data.size) + 229
       len 32
}



}
