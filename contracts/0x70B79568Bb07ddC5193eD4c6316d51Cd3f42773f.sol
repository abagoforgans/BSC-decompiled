contract main {




// =====================  Runtime code  =====================


address trustedForwarderAddress;
uint64 stor1;
uint128 stor1; offset 64
address currentHolderAddress;
array of uint256 versionRecipient;

function currentHolder() payable {
    return currentHolderAddress
}

function versionRecipient() payable {
    return versionRecipient[0 len versionRecipient.length]
}

function trustedForwarder() payable {
    return trustedForwarderAddress
}

function _fallback() payable {
    revert
}

function setTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    trustedForwarderAddress = arg1
}

function isTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    return (arg1 == trustedForwarderAddress)
}

function captureTheFlag() payable {
    if calldata.size < 24:
        currentHolderAddress = msg.sender
    else:
        if trustedForwarderAddress != msg.sender:
            currentHolderAddress = msg.sender
        else:
            uint64(stor1.field_0) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
            Mask(96, 0, stor1.field_64) = 0
    emit FlagCaptured(currentHolderAddress, currentHolderAddress);
}



}
