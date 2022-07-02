contract main {




// =====================  Runtime code  =====================


address owner;
address sub_d983672eAddress;
address wbnbAddress;
address pairAddress;

function wbnb() payable {
    return wbnbAddress
}

function owner() payable {
    return owner
}

function pair() payable {
    return pairAddress
}

function sub_d983672e(?) payable {
    return sub_d983672eAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setWbnb(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'wbnb address cannot be 0'
    wbnbAddress = arg1
}

function setPair(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'pair address cannot be 0'
    pairAddress = arg1
}

function sub_6b476542(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'bul address cannot be 0'
    sub_d983672eAddress = arg1
}

function sub_5ceaad5d(?) payable {
    require ext_code.size(wbnbAddress)
    staticcall wbnbAddress.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_d1d2762d(?) payable {
    require ext_code.size(sub_d983672eAddress)
    staticcall sub_d983672eAddress.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getPrice() payable {
    require ext_code.size(sub_d983672eAddress)
    staticcall sub_d983672eAddress.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wbnbAddress)
    staticcall wbnbAddress.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function consult(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_d983672eAddress != arg1:
        revert with 0, 'token needs to be bul'
    require ext_code.size(sub_d983672eAddress)
    staticcall sub_d983672eAddress.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wbnbAddress)
    staticcall wbnbAddress.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return Mask(144, 0, 0 / ext_call.return_data[0])
    else:
        if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return Mask(144, 0, arg2 * ext_call.return_data[0] / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}



}
