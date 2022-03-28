contract main {




// =====================  Runtime code  =====================


address owner;
address woolAddress;
array of struct stor2;
mapping of uint256 stor3;

function isApprovedConsumer(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function owner() payable {
    return owner
}

function wool() payable {
    return woolAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function add(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not stor3[address(arg1)]:
        stor2.length++
        stor2[stor2.length].field_0 = arg1
        stor2[stor2.length].field_160 = 0
        stor3[address(arg1)] = stor2.length
}

function sub_52fe296c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    require ext_code.size(woolAddress)
    call woolAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor3[address(msg.sender)]:
        revert with 0, 'WoolController: unauthorized'
    require ext_code.size(woolAddress)
    call woolAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor3[address(msg.sender)]:
        revert with 0, 'WoolController: unauthorized'
    require ext_code.size(woolAddress)
    call woolAddress.0x9dc29fac with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function remove(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73576f6f6c436f6e74726f6c6c65723a2063616c6c65722069736e277420617070726f7665,
                    mem[201 len 27]
    if stor3[address(arg1)]:
        require stor2.length - 1 < stor2.length
        require stor3[address(arg1)] - 1 < stor2.length
        stor2[stor3[address(arg1)]].field_0 = stor2[stor2.length].field_0
        stor3[stor2[stor2.length].field_0] = stor3[address(arg1)]
        require stor2.length
        stor2[stor2.length].field_0 = 0
        stor2.length--
        stor3[address(arg1)] = 0
}



}
