contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint256 sub_1acbc823;
uint256 startTime;
uint256 endTime;
mapping of uint256 purchased;

function sub_1acbc823(?) {
    return sub_1acbc823
}

function endTime() {
    return endTime
}

function purchased(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return purchased[arg1]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setEndTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    endTime = arg1
}

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startTime = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_feb367fc(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buy() payable {
    if msg.value and 500 > -1 / msg.value:
        revert with 'NH{q', 17
    if block.timestamp < startTime:
        revert with 0, 'Presale has not started'
    if block.timestamp >= endTime:
        revert with 0, 'Presale has ended (time expired)'
    if sub_1acbc823 > 60000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale has ended (max amount reached)'
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 500 * msg.value:
        revert with 0, 'Insufficient contract ISLND balance'
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 500 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call stor2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_1acbc823 > (-500 * msg.value) - 1:
        revert with 'NH{q', 17
    sub_1acbc823 += 500 * msg.value
}



}
