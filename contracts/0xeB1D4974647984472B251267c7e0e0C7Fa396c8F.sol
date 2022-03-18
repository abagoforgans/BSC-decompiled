contract main {




// =====================  Runtime code  =====================


const get_time = block.timestamp


mapping of uint256 sub_a60e1706;
mapping of uint256 sub_18c81666;
address owner;
uint256 sub_21cf1c62;
mapping of uint8 stor4;

function sub_18c81666(?) {
    return sub_18c81666[arg1]
}

function sub_21cf1c62(?) {
    return sub_21cf1c62
}

function sub_3b3d15ce(?) {
    return bool(stor4[arg1][arg2])
}

function owner() {
    return owner
}

function sub_a60e1706(?) {
    return sub_a60e1706[arg1]
}

function _fallback() payable {
    revert
}

function purpose(string arg1) {
    emit Purposal(Array(len=arg1.length, data=arg1[all]), sub_21cf1c62);
    sub_21cf1c62++
}

function update_event_time(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    sub_a60e1706[arg1] = arg2
    sub_18c81666[arg1] = arg3
}

function disagree_vote(uint256 arg1) {
    require sub_a60e1706[arg1] <= block.timestamp
    require sub_18c81666[arg1] >= block.timestamp
    stor4[address(msg.sender)][arg1] = 0
}

function agree_vote(uint256 arg1) {
    require sub_a60e1706[arg1] <= block.timestamp
    require sub_18c81666[arg1] >= block.timestamp
    stor4[address(msg.sender)][arg1] = 1
    emit Voter(msg.sender, arg1);
}

function get_vote(uint256 arg1, address[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
        if bool(stor4[mem[(32 * idx) + 140 len 20]][arg1]) != 1:
            idx = idx + 1
            s = s
            continue 
        require idx < arg2.length
        _23 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(0xafa4f3d72f0803b50c99663b3e90806d9d290770)
        call 0xafa4f3d72f0803b50c99663b3e90806d9d290770.0x70a08231 with:
             gas gas_remaining wei
            args address(_23)
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    return s
}



}
