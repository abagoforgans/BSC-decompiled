contract main {




// =====================  Runtime code  =====================


address owner;
address authorizedCallerAddress;
address devAddress;
uint8 stor3; offset 160
uint128 stor3; offset 160
address destinationAddress;
address defaultSweeperAddress;
mapping of address stor5;

function defaultSweeper() payable {
    return defaultSweeperAddress
}

function owner() payable {
    return owner
}

function dev() payable {
    return devAddress
}

function authorizedCaller() payable {
    return authorizedCallerAddress
}

function destination() payable {
    return destinationAddress
}

function halted() payable {
    return bool(uint8(stor3.field_160))
}

function _fallback() payable {
    revert
}

function start() payable {
    if owner != msg.sender:
        revert with 0, 'not owner'
    Mask(96, 0, stor3.field_160) = 0
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not owner'
    owner = arg1
}

function changeDev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not owner'
    devAddress = arg1
}

function sweeperOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[address(arg1)]:
        return stor5[address(arg1)]
    return defaultSweeperAddress
}

function changeDestination(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not owner'
    destinationAddress = arg1
}

function changeAuthorizedCaller(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not owner'
    authorizedCallerAddress = arg1
}

function halt() payable {
    if authorizedCallerAddress != msg.sender:
        if owner != msg.sender:
            if devAddress != msg.sender:
                revert with 0, 'not admin'
    Mask(96, 0, stor3.field_160) = 1
}

function addSweeper(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'not owner'
    stor5[address(arg1)] = arg2
}

function logSweep(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    emit LogSweep(arg4, arg1, arg2, arg3);
}

function makeWallet() payable {
    if authorizedCallerAddress != msg.sender:
        if owner != msg.sender:
            if devAddress != msg.sender:
                revert with 0, 'not admin'
    create contract with 0 wei
                    code: code.data[4324 len 1654], address(this.address)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogNewWallet(address(create.new_address));
    return address(create.new_address)
}



}
