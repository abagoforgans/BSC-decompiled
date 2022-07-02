contract main {




// =====================  Runtime code  =====================


const getCurrentTime = block.timestamp

const sub_da611a26(?) = 0

const PERIOD = (720 * 24 * 3600)

const START_TIME = 1631671376


address owner;
address sub_d02adc2aAddress;
uint256 lockToken;
uint256 sub_5a896bea;
uint256 nextRelease;

function sub_5a896bea(?) payable {
    return sub_5a896bea
}

function owner() payable {
    return owner
}

function nextRelease() payable {
    return nextRelease
}

function lockToken() payable {
    return lockToken
}

function sub_d02adc2a(?) payable {
    return sub_d02adc2aAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d02adc2aAddress = arg1
}

function getBalance() payable {
    require ext_code.size(sub_d02adc2aAddress)
    staticcall sub_d02adc2aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTimeReleaseNext() payable {
    if 720 * 24 * 3600 * sub_5a896bea / 720 * 24 * 3600 != sub_5a896bea:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((720 * 24 * 3600 * sub_5a896bea) + 1631671376)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function release() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 720 * 24 * 3600 * sub_5a896bea / 720 * 24 * 3600 != sub_5a896bea:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if block.timestamp < (720 * 24 * 3600 * sub_5a896bea) + 1631671376:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe546f6b656e54696d656c6f636b3a2063757272656e742074696d65206973206265666f72652072656c656173652074696d,
                    mem[214 len 14]
    require ext_code.size(sub_d02adc2aAddress)
    staticcall sub_d02adc2aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x77546f6b656e54696d656c6f636b3a206e6f20746f6b656e7320746f2072656c656173,
                    mem[199 len 29]
    if nextRelease > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if 0 >= lockToken:
        require ext_code.size(sub_d02adc2aAddress)
        call sub_d02adc2aAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner, lockToken
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        lockToken = 0
    else:
        if (720 * 24 * 3600 * block.timestamp - nextRelease / 720 * 24 * 3600) + (720 * 24 * 3600) / 720 * 24 * 3600 != (block.timestamp - nextRelease / 720 * 24 * 3600) + 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        nextRelease = nextRelease + (720 * 24 * 3600 * block.timestamp - nextRelease / 720 * 24 * 3600) + (720 * 24 * 3600)
        if 0 > lockToken:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(sub_d02adc2aAddress)
        call sub_d02adc2aAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    sub_5a896bea = sub_5a896bea + (block.timestamp - nextRelease / 720 * 24 * 3600) + 1
}



}
