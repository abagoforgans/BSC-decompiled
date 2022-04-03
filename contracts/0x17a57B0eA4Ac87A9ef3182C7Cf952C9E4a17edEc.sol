contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function upgrade(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.upgradeTo(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeProxyAdmin(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.changeAdmin(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getProxyAdmin(address arg1) {
    require calldata.size - 4 >= 32
    staticcall arg1.admin() with:
            gas gas_remaining wei
    if not return_data.size:
        require ext_call.success
        return memory
          from 140
           len 20
    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require ext_call.success
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 97] = mem[140 len 20]
    return memory
      from ceil32(return_data.size) + 97
       len 32
}

function getProxyImplementation(address arg1) {
    require calldata.size - 4 >= 32
    staticcall arg1.implementation() with:
            gas gas_remaining wei
    if not return_data.size:
        require ext_call.success
        return memory
          from 140
           len 20
    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require ext_call.success
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 97] = mem[140 len 20]
    return memory
      from ceil32(return_data.size) + 97
       len 32
}

function upgradeAndCall(address arg1, address arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1 with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg2), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
