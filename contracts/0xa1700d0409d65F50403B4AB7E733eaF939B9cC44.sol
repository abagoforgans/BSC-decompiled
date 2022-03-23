contract main {




// =====================  Runtime code  =====================


#
#  - sub_165efd35(?)
#
mapping of struct sub_6f2ca486;

function sub_6f2ca486(?) {
    return sub_6f2ca486[arg1][0 len sub_6f2ca486[arg1].length].field_0
}

function _fallback() payable {
  stop
}

function sub_54f7dbe2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6f2ca486[arg1].field_0, 
           address(sub_6f2ca486[arg1].field_0, sub_6f2ca486[arg1].field_448),
           sub_6f2ca486[arg1].field_288
}

function sub_3a1d1607(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0x84bc509ae8590afaa954f7213d8482ae6471f28e != msg.sender:
        revert with 0, 'o'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ff4ea7b8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0x84bc509ae8590afaa954f7213d8482ae6471f28e != msg.sender:
        revert with 0, 'o'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0, 0x400000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_20c4586c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[128] = address(arg1)
    mem[148] = address(arg2)
    mem[168] = address(arg3)
    sub_6f2ca486[address(sha3(address(arg1), address(arg2), address(arg3)))].field_0 = 121
    s = 0
    idx = 128
    while 188 > idx:
        sub_6f2ca486[address(sha3(address(arg1), address(arg2), address(arg3)))][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while sub_6f2ca486[address(sha3(address(arg1), address(arg2), address(arg3)))].length + 31 / 32 > idx:
        sub_6f2ca486[address(sha3(address(arg1), address(arg2), address(arg3)))][idx].field_0 = 0
        idx = idx + 1
        continue 
}



}
