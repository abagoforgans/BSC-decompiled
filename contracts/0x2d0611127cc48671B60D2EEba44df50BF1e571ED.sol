contract main {




// =====================  Runtime code  =====================


#
#  - safeTransfer(address arg1, address arg2, uint256 arg3)
#
address sub_cc9ae595Address;
address factoryAddress;
uint256 stor1;
mapping of address sub_45ba8489;

function sub_45ba8489(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_45ba8489[arg1]
}

function factory() payable {
    return address(factoryAddress)
}

function sub_cc9ae595(?) payable {
    return sub_cc9ae595Address
}

function _fallback() payable {
    revert
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not sub_cc9ae595Address
    require arg1
    sub_cc9ae595Address = arg1
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall sub_cc9ae595Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_45ba8489[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_51bb50e6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(factoryAddress) != msg.sender:
        revert with 0, 'onlyFactory'
    if address(arg2):
        if address(arg2) != sub_45ba8489[address(arg1)]:
            sub_45ba8489[address(arg1)] = address(arg2)
        return address(arg2)
    create contract with 0 wei
                    code: code.data[1533 len 1000], address(arg1), address(factoryAddress)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x326b0c88: address(arg1), address(create.new_address)
    sub_45ba8489[address(arg1)] = address(create.new_address)
    return address(create.new_address)
}



}
