contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;

function sub_3955a2bc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[arg1])
}

function sub_1c443a34(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require stor0[msg.sender]
    if not ext_code.size(arg3):
        revert with 0, 'NC'
    require ext_code.size(address(arg2))
    call address(arg2).setDeployer(address arg1) with:
         gas gas_remaining wei
        args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(address(arg1))
}

function _fallback() payable {
    revert
}

function sub_4087e4d2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor0[msg.sender]
    stor1 = address(arg1)
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[msg.sender]
    stor0[address(arg1)] = 1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[msg.sender]
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawPartial(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require stor0[msg.sender]
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d2885592(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require stor0[msg.sender]
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require stor0[msg.sender]
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function mint(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require stor0[msg.sender]
    call stor1.safeMint(address arg1, string arg2) with:
         gas gas_remaining wei
        args address(arg1), 64, arg2.length, arg2[all], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e20873a6(?) payable {
    require calldata.size - 4 >= 224
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require (32 * ('cd', 68).length) + cd[68] + 36 <= calldata.size
    s = 128
    idx = cd[68] + 36
    while idx < (32 * ('cd', 68).length) + cd[68] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 98 < 97 or ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98
    mem[ceil32(32 * ('cd', 68).length) + 97] = ('cd', 100).length
    require (32 * ('cd', 100).length) + cd[100] + 36 <= calldata.size
    s = ceil32(32 * ('cd', 68).length) + 129
    idx = cd[100] + 36
    while idx < (32 * ('cd', 100).length) + cd[100] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[132] == address(cd[132])
    require cd[164] == address(cd[164])
    require cd[196] == uint8(cd[196])
    require stor0[msg.sender]
    if 0 >= ('cd', 68).length:
        revert with 0, 50
    _32 = mem[128]
    if 2 >= ('cd', 68).length:
        revert with 0, 50
    _34 = mem[192]
    if 1 >= ('cd', 68).length:
        revert with 0, 50
    _36 = mem[160]
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98 len 10559] = code.data[3029 len 10559]
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 10657] = cd[4]
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 10689] = address(cd[36])
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 10721] = address(_32)
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 10753] = 288
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 10945] = ('cd', 100).length
    idx = 0
    s = ceil32(32 * ('cd', 68).length) + 129
    t = mem[64] + 10879
    while idx < ('cd', 100).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    create contract with 0 wei
                    code: mem[mem[64] len 10687], address(cd[132]), address(_34), address(_36), address(cd[164]), cd[196] << 248, mem[mem[64] + 10847 len (32 * ('cd', 100).length) + 32]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
