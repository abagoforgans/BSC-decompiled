contract main {




// =====================  Runtime code  =====================


const DURATION = (2400 * 24 * 3600)

const TOKEN = 0x18fb4a2a5462cf550d2867a8e5684736623e890


mapping of struct locked;

function locked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return locked[arg1].field_0, locked[arg1].field_256
}

function _fallback() payable {
    revert
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    call 0x018fb4a2a5462cf550d2867a8e5684736623e890.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if locked[msg.sender].field_0 > !arg1:
        revert with 0, 17
    locked[msg.sender].field_0 += arg1
    locked[msg.sender].field_256 = block.timestamp
    emit Lock(arg1, block.timestamp, msg.sender);
}

function unlock() payable {
    if not locked[msg.sender].field_0:
        revert with 0, 'Lock:no token locked'
    if locked[msg.sender].field_256 > -8640001:
        revert with 0, 17
    if locked[msg.sender].field_256 + (2400 * 24 * 3600) >= block.timestamp:
        revert with 0, 'Lock:time limited'
    locked[msg.sender].field_0 = 0
    locked[msg.sender].field_256 = block.timestamp
    call 0x018fb4a2a5462cf550d2867a8e5684736623e890.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, locked[msg.sender].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Unlock(locked[msg.sender].field_0, block.timestamp, msg.sender);
}



}
