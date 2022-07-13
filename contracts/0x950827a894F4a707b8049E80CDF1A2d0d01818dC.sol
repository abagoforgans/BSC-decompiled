contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address tierAddress;
array of address sub_26af1f0a;
address sub_3740ebb3Address;
uint256 feePercent;

function tier() payable {
    return tierAddress
}

function getIDOsCount() payable {
    return sub_26af1f0a.length
}

function sub_26af1f0a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_26af1f0a.length
    return sub_26af1f0a[arg1]
}

function sub_3740ebb3(?) payable {
    return sub_3740ebb3Address
}

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function feePercent() payable {
    return feePercent
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function getFeeInfo() payable {
    return sub_3740ebb3Address, feePercent
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTier(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    tierAddress = arg1
}

function setOperator(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    stor1[address(arg1)] = uint8(arg2)
}

function setFeeInfo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    if arg2 >= 1000:
        revert with 0, 'Invalid percent'
    feePercent = arg2
    sub_3740ebb3Address = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getTierId(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(tierAddress)
    staticcall tierAddress.0xedf61750 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getMaxAllocationAmountAtTierId(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(tierAddress)
    staticcall tierAddress.0x87ef1b60 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * arg2)
}

function getMaxAllocationAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(tierAddress)
    staticcall tierAddress.0xa9d637e1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * arg2)
}

function sub_846ae9ae(?) payable {
    require calldata.size - 4 >= 288
    require arg2 == address(arg2)
    require arg9 <= test266151307()
    require arg9 + 35 < calldata.size
    if arg9.length > test266151307():
        revert with 0, 65
    if ceil32(arg9.length) + 128 < 96 or ceil32(arg9.length) + 128 > test266151307():
        revert with 0, 65
    require arg9 + arg9.length + 36 <= calldata.size
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Not owner or operator'
    create contract with 0 wei
                    code: Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), code.data[arg9.length + -ceil32(arg9.length) + 3690 len -arg9.length + ceil32(arg9.length) + 19333], address(this.address), arg1, address(arg2), arg3
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address) with:
         gas gas_remaining wei
        args arg4, arg5, arg6, arg7, arg8, Array(len=arg9.length, data=arg9[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_26af1f0a.length++
    sub_26af1f0a[sub_26af1f0a.length] = address(create.new_address)
    emit NewIDOCreated(address arg1, address arg2):
                       0,
                       Mask(224, 0, msg.sender),
                       address(create.new_address),
    return 0, uint128(create.new_address) << 96
}



}
