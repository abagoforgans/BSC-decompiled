contract main {




// =====================  Runtime code  =====================


address owner;
address sub_9b9fcf9dAddress;
array of struct stor2;
mapping of uint256 stor3;

function sub_5a7d11d3(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function owner() payable {
    return owner
}

function sub_9b9fcf9d(?) payable {
    return sub_9b9fcf9dAddress
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

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    require ext_code.size(sub_9b9fcf9dAddress)
    call sub_9b9fcf9dAddress.0x29605e77 with:
         gas gas_remaining wei
        args arg1
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

function updateAlpacaEnergy(address arg1, uint256 arg2, uint32 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x64416c706163614f70657261746f724d616e616765723a20756e617574686f72697a65,
                    mem[199 len 29]
    require ext_code.size(sub_9b9fcf9dAddress)
    call sub_9b9fcf9dAddress.0x6f8eec3b with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function remove(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x73416c706163614f70657261746f724d616e616765723a206f70657261746f722069736e277420617070726f7665,
                    mem[210 len 18]
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
