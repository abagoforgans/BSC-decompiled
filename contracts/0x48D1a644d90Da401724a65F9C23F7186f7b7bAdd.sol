contract main {




// =====================  Runtime code  =====================


#
#  - sub_8c6fd1ed(?)
#
address superManagerAddress;
address managerAddress;
uint256 stor3;
uint256 stor4;

function manager() payable {
    return managerAddress
}

function superManager() payable {
    return superManagerAddress
}

function destroy() payable {
    if managerAddress != msg.sender:
        if superManagerAddress != msg.sender:
            revert with 0, 'Is not manager'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function changeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if superManagerAddress != msg.sender:
        revert with 0, 'Is not superManager'
    managerAddress = arg1
}

function setRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        if superManagerAddress != msg.sender:
            revert with 0, 'Is not manager'
    stor3 = arg1
}

function setMaxRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        if superManagerAddress != msg.sender:
            revert with 0, 'Is not manager'
    stor4 = arg1
}

function withdraw() payable {
    if managerAddress != msg.sender:
        if superManagerAddress != msg.sender:
            revert with 0, 'Is not manager'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
