contract main {




// =====================  Runtime code  =====================


#
#  - purchase(uint256 arg1)
#
address owner;
address TOKENAddress;
uint256 sub_0b65880f;
uint256 sub_b5d55778;
uint256 sub_5e3e88f4;
uint256 stor6;
uint256 startTime;
uint8 stor8;
mapping of uint8 stor9;

function sub_0b65880f(?) {
    return sub_0b65880f
}

function sub_3d719da7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor9[arg1])
}

function sub_5e3e88f4(?) {
    return sub_5e3e88f4
}

function startTime() {
    return startTime
}

function TOKEN() {
    return TOKENAddress
}

function owner() {
    return owner
}

function sub_b5d55778(?) {
    return sub_b5d55778
}

function _fallback() payable {
    revert
}

function status() {
    if startTime > !stor6:
        revert with 0, 17
    if block.timestamp <= startTime + stor6:
        if block.timestamp >= startTime:
            return 1
        else:
            return 0
    else:
        return 0
}

function activate() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startTime > !stor6:
        revert with 0, 17
    if block.timestamp <= startTime + stor6:
        if block.timestamp >= startTime:
            revert with 0, 'Presale is already enabled'
    startTime = block.timestamp
    stor8 = 1
}

function deactivate() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startTime > !stor6:
        revert with 0, 17
    if block.timestamp > startTime + stor6:
        revert with 0, 'Presale is already disabled'
    if block.timestamp < startTime:
        revert with 0, 'Presale is already disabled'
    stor8 = 0
}



}
